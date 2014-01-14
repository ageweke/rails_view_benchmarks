require 'benchmarker'

class String
  UPPERCASE_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  LOWERCASE_ALPHABET = UPPERCASE_ALPHABET.downcase
  ALL_CASE_ALPHABET = UPPERCASE_ALPHABET + LOWERCASE_ALPHABET

  NUMBERS = "0123456789"
  PUNCTUATION = ".-_/"

  USERNAME_CHARACTERS = ALL_CASE_ALPHABET + NUMBERS + PUNCTUATION
  SECURE_HASH_CHARACTERS = ALL_CASE_ALPHABET + NUMBERS
  PROFILE_PATH_CHARACTERS = UPPERCASE_ALPHABET + NUMBERS

  HEX_CHARACTERS = "ABCDEF" + NUMBERS

  class << self
    def random_profile_name
      count = rand(12) + 5
      out = ""
      count.times { out << USERNAME_CHARACTERS[rand(USERNAME_CHARACTERS.length)] }
      out
    end

    def random_secure_hash
      out = ""
      22.times { out << SECURE_HASH_CHARACTERS[rand(SECURE_HASH_CHARACTERS.length)] }
      out
    end

    def random_profile_image
      "/n/image/main_image/1/#{Integer.random_id}/#{Time.random_future_time.to_i}/C-30-30?default=true&sh=#{random_secure_hash}"
    end

    def random_profile_path
      out = "/profile.html?id="
      8.times { out << PROFILE_PATH_CHARACTERS[rand(PROFILE_PATH_CHARACTERS.length)] }
      out
    end

    def random_name
      %w{Joe Mary Floyd Miriam Ben Hermione Kate Scott}.sample + " " +
        %w{Hernandez Johnson Li Miller}.sample
    end

    def random_profile_name_path
      "/n/people/#{random_profile_name}"
    end


    def random_hex_string(length)
      out = ""
      length.times { out << HEX_CHARACTERS[rand(HEX_CHARACTERS.length)] }
      out
    end
  end
end

class Integer
  def self.random_id
    rand(1_000_000_000)
  end
end

class Time
  def self.random_future_date
    Time.now.at_midnight + rand(30).days
  end

  def self.random_future_time
    random_future_date + rand(86_400)
  end

  def self.random_time
    Time.now + rand(86_400)
  end
end

class BenchmarkController < ApplicationController
  MICROSECONDS_PER_SECOND = 1_000_000

  def benchmark_place_page
    @place = OpenStruct.new(
      :title => "San Francisco",
      :following => true,
      :id => 13,
      :total_threads => 17442,
      :path => "/n/places/san-francisco-california-united-states")

    @user = OpenStruct.new(
      :name => 'Joe Smith',
      :id => Integer.random_id,
      :profile_image => String.random_profile_image,
      :unread_messages => 57,
      :first_name => 'Joe',
      :profile_path => '/profile.html?id=890FZQ')

    @subnav_places = [
      OpenStruct.new(:link => "/n/places/san-francisco-california-united-states", :title => "San Francisco Bay", :followed => true),
      OpenStruct.new(:link => "/n/places/yosemite-national-park-california-united-states", :title => "Yosemite National Park", :followed => true),
      OpenStruct.new(:link => "/n/places/rocky-mountain-national-park-united-states", :title => "Rocky Mountain National Park", :followed => true),
      OpenStruct.new(:link => "/n/places/barcelona-cataluna-spain", :title => "Barcelona"),
      OpenStruct.new(:link => "/n/places/berlin-berlin-germany", :title => "Berlin"),
      OpenStruct.new(:link => "/n/places/boston-massachusetts-united-states", :title => "Boston"),
      OpenStruct.new(:link => "/n/places/budapest-budapest-hungary", :title => "Budapest"),
      OpenStruct.new(:link => "/n/places/buenos-aires-autonomous-city-of-buenos-aires-argentina", :title => "Buenos Aires"),
      OpenStruct.new(:link => "/n/places/cairo-cairo-governorate-egypt", :title => "Cairo"),
      OpenStruct.new(:link => "/n/places/cape-town-western-cape-south-africa", :title => "Cape Town"),
      OpenStruct.new(:link => "/n/places/istanbul-turkey", :title => "Istanbul"),
      OpenStruct.new(:link => "/n/places/melbourne-victoria-australia", :title => "Melbourne"),
      OpenStruct.new(:link => "/n/places/mexico-city-distrito-federal-mexico", :title => "Mexico City"),
      OpenStruct.new(:link => "/n/places/montreal-quebec-canada", :title => "Montreal"),
      OpenStruct.new(:link => "/n/places/nairobi-nairobi-kenya", :title => "Nairobi")
    ]

    @subscription_options = [
      OpenStruct.new(:selected => false, :key => :instant_email_updates, :name => 'Instant Updates', :detail => '(Get messages as they are posted)'),
      OpenStruct.new(:selected => true, :key => :digest_emails, :name => 'Occasional Email Digests', :detail => nil),
      OpenStruct.new(:selected => false, :key => :no_emails, :name => 'No Email Digests', :detail => nil),
    ]

    @part_of = [
      OpenStruct.new(:url => '/n/geolocations/united-states_california', :name => "California"),
      OpenStruct.new(:url => '/n/geolocations/united-states', :name => "United States")
    ]

    @nearby = [
      OpenStruct.new(:url => '/n/places/uc-berkeley-california-united-states', :name => "UC Berkeley"),
      OpenStruct.new(:url => '/n/places/stanford-university-california-united-states', :name => "Stanford University"),
      OpenStruct.new(:url => '/n/places/wine-country-california-united-states', :name => "California Wine Country"),
      OpenStruct.new(:url => '/n/places/san-jose-california-united-states', :name => "San Jose"),
      OpenStruct.new(:url => '/n/places/santa-cruz-california-united-states', :name => "Santa Cruz"),
      OpenStruct.new(:url => '/n/places/monterey-california-united-states', :name => "Monterey, California"),
      OpenStruct.new(:url => '/n/places/sacramento-california-united-states', :name => "Sacramento"),
      OpenStruct.new(:url => '/n/places/merced-california-united-states', :name => "Merced"),
      OpenStruct.new(:url => '/n/places/mendocino-california-united-states', :name => "Mendocino"),
    ]

    @featured_events = [ ]
    2.times do
      event = OpenStruct.new(:numeric_id => Integer.random_id, :start_date => Time.random_future_date,
        :id => "some-event-string-for-something-#{rand(1_000_000)}", :big_day => Time.random_future_date.strftime("%B %d"),
        :small_day => "%A", :time => Time.random_time, :image => String.random_profile_image,
        :title => "This is some featured event!", :location => "And this is where that event happens",
        :attendee_count => 5 + rand(75), :button_id => String.random_hex_string(22),
        :attendees => [ ])

      attendees = [ ]
      10.times do
        attendees << OpenStruct.new(
          :name => String.random_name, :profile => "/n/people/#{String.random_profile_name_path}",
          :organizer => false, :verified => (rand(10) < 2 ? true : false),
          :profile_image => String.random_profile_image, :id => Integer.random_id)
      end

      (0..(1 + rand(3))).each { |i| attendees[i].organizer = true }

      event[:attendees] += attendees

      @featured_events << event
    end

    @form_authenticity_token = "BZHW+lZIOqSn5Lu+mOKSND+0f4s72zohHSnHbxvZEHU="

    benchmark!({ })
  end

  private
  def benchmark!(locals)
    benchmarker = Benchmarker.new

    engine = params[:engine]
    desired_runtime = Float(params[:desired_runtime] || 1.0)

    benchmark = nil
    if action_name =~ /^benchmark_(.+)$/i
      benchmark = $1
    else
      raise "Can't parse benchmark from action name: #{action_name.inspect}!"
    end

    @partial_base = "benchmark/#{benchmark}/#{engine}".freeze

    template = "#{@partial_base}/#{benchmark}".freeze
    @render_args = { :template => template, :locals => locals }
    @measure_count ||= 25

    if params[:view_only]
      return render @render_args
    end

    benchmarker.go! { render @render_args }

    render :text => "Benchmark '#{benchmark}', engine #{engine}: #{benchmarker.to_s}"
  end
end
