# Coding: UTF-8

require 'benchmarker'

if (! ENV['FORMATTED'].blank?)
  ::Fortitude::Widget::Base.format_output true
  ::Fortitude::Widget::Base.start_and_end_comments true
end

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
      "/profile.html?id=#{random_profile_encoded_id}"
    end

    def random_profile_encoded_id
      (0..7).map { PROFILE_PATH_CHARACTERS[rand(PROFILE_PATH_CHARACTERS.length)] }.join
    end

    def random_name
      %w{Joe Mary Floyd Miriam Ben Hermione Kate Scott}.sample + " " +
        %w{Hernandez Johnson Li Miller}.sample
    end

    def random_profile_name_path
      "/n/people/#{random_profile_name}"
    end

    def random_word
      out = ""
      (2 + rand(7)).times { out << LOWERCASE_ALPHABET[rand(LOWERCASE_ALPHABET.length)] }
      out
    end

    def random_thread_slug
      (0..(3 + rand(20))).map { |i| random_word }.join("-")
    end

    def random_hex_string(length)
      out = ""
      length.times { out << HEX_CHARACTERS[rand(HEX_CHARACTERS.length)] }
      out
    end

    def random_phrase
      (0..(1 + rand(6))).map { |i| random_word }.join(" ")
    end

    def random_text(min_words, max_words)
      num_words = min_words + rand(max_words - min_words)
      (0..(num_words - 1)).map { |i| random_word }.join(" ")
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

  def self.random_past_time
    Time.now - rand(86_400) - rand(10).days
  end
end

class BenchmarkController < ApplicationController
  MICROSECONDS_PER_SECOND = 1_000_000

  def random_event
    OpenStruct.new(:generator => !! (rand(2) == 1), :slug => String.random_thread_slug,
        :title => String.random_phrase, :when => Time.random_future_time, :location => String.random_phrase,
        :attendees => 1 + rand(100))
  end

  def benchmark_place_page
    if params[:srand]
      srand(Integer(params[:srand]))
    end

    @place = OpenStruct.new(
      :title => "San Francisco",
      :following => true,
      :id => rand(100_000),
      :total_threads => rand(30_000),
      :path => "/n/places/san-francisco-california-united-states",
      :locals_count => rand(100_000))

    @user = OpenStruct.new(
      :name => 'Joe Smith',
      :id => Integer.random_id,
      :location => 'San Francisco',
      :profile_image => String.random_profile_image,
      :username => 'JOESMITH',
      :unread_messages => rand(100),
      :first_name => 'Joe',
      :profile_path => '/profile.html?id=890FZQ',
      :locale => 'en_US',
      :live_place_slug => 'san-francisco-california-united-states')

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

      event.attendees += attendees

      @featured_events << event
    end

    @form_authenticity_token = "BZHW+lZIOqSn5Lu+mOKSND+0f4s72zohHSnHbxvZEHU="

    @conversation_categories = [
      OpenStruct.new(:symbol => :places_to_stay, :name => "Places To Stay",
        :description => "I’m looking for a place to stay."),
      OpenStruct.new(:symbol => :meeting_people, :name => "Meeting People",
        :description => "I want to meet new people in the area."),
      OpenStruct.new(:symbol => :local_advice, :name => "Local Advice",
        :description => "I want to know more about the area."),
      OpenStruct.new(:symbol => :share_a_ride, :name => "Share a Ride",
        :description => "I want to share a ride somewhere."),
      OpenStruct.new(:symbol => :general, :name => "Other",
        :description => "Observations, conversations, etc..."),
    ]

    @conversation_tabs = @conversation_categories + [
      OpenStruct.new(:symbol => :all, :name => "All")
    ]

    @comments = [ ]

    10.times do
      comment = OpenStruct.new(:creator_id => rand(1_000_000_000), :entity_id => rand(1_000_000_000),
        :slug => String.random_thread_slug, :total_replies => rand(50), :id => Integer.random_id,
        :creator_profile_link => String.random_profile_path, :creator_profile_image => String.random_profile_image,
        :thread_title => String.random_phrase, :created_at => Time.random_past_time,
        :creator_name => String.random_name, :creator_profile_encoded_id => String.random_profile_encoded_id,
        :short_text => String.random_text(10, 20), :more_text => String.random_text(0, 200))

      replies = [ ]
      (1..(1 + rand(15))).each do
        reply = OpenStruct.new(:profile_link => String.random_profile_path,
          :profile_image => String.random_profile_image, :created_at => Time.random_past_time,
          :creator_id => Integer.random_id, :id => Integer.random_id, :slug => String.random_thread_slug,
          :creator_name => String.random_name, :creator_profile_encoded_id => String.random_profile_encoded_id,
          :text => String.random_text(10, 200))

        replies << reply
      end
      comment.replies = replies

      @comments << comment
    end

    @trending_events = [ ]
    3.times { @trending_events << random_event }

    @upcoming_events = [ ]
    10.times { @upcoming_events << random_event }

    @total_event_count = rand(100)

    @surfers = [ ]
    10.times do
      @surfers << OpenStruct.new(:city_couchrequest_id => Integer.random_id,
        :profile_encoded_id => String.random_profile_encoded_id, :profile_image => String.random_profile_image,
        :verified? => !! (rand(2) == 1), :name => String.random_name, :city => String.random_word,
        :age => 18 + rand(50), :gender => (rand(2) == 1 ? "Male" : "Female"), :reference_count => 1 + rand(50))
    end

    @related_groups = [ ]
    5.times do
      @related_groups << OpenStruct.new(:id => Integer.random_id, :name => String.random_phrase)
    end

    @languages = [
      OpenStruct.new(:locale => 'de_DE', :name => 'Deutsch'),
      OpenStruct.new(:locale => 'en_US', :name => 'English'),
      OpenStruct.new(:locale => 'es_ES', :name => 'Español'),
      OpenStruct.new(:locale => 'fr_FR', :name => 'Français'),
      OpenStruct.new(:locale => 'it_IT', :name => 'Italiano'),
      OpenStruct.new(:locale => 'ja_JP', :name => '日本語'),

      OpenStruct.new(:locale => 'ko_KR', :name => '한국어'),
      OpenStruct.new(:locale => 'pl_PL', :name => 'Polski'),
      OpenStruct.new(:locale => 'pt_BR', :name => 'Português brasileiro'),
      OpenStruct.new(:locale => 'ru_RU', :name => 'Русский'),
      OpenStruct.new(:locale => 'tr_TR', :name => 'Türkçe'),
      OpenStruct.new(:locale => 'zh_CN', :name => '中文 (简化字)'),
    ]

    @social_links = [
      OpenStruct.new(:name => "Twitter", :link => "http://twitter.com/couchsurfing"),
      OpenStruct.new(:name => "Facebook", :link => "http://facebook.com/couchsurfing"),
      OpenStruct.new(:name => "Google", :link => "https://plus.google.com/102186173500819286170"),
      OpenStruct.new(:name => "YouTube", :link => "http://www.youtube.com/user/thisiscouchsurfing"),
      OpenStruct.new(:name => "Tumblr", :link => "http://couchsurfing.tumblr.com/"),
      OpenStruct.new(:name => "Instagram", :link => "http://instagram.com/couchsurfing"),
    ]

    @site_map =
      { 'About' => { "About Us" => '/n/about', "Team" => '/n/team', "Jobs" => '/n/jobs', "Press" => '/n/press',
                     "Blog" => '/n/news' },
        'Getting Started' => { "How It Works" => '/n/how-it-works', "Mobile" => '/n/mobile' },
        'Safety' => { "Basics" => '/n/safety', "Tips" => '/n/safety_tips', "FAQ" => '/n/safety_faq' },
        'Community' => { "Our Values" => '/n/values', "Ambassador Program" => '/n/ambassadors', "Stories" => '/n/stories' },
        'Support' => { "Help" => '/n/help', 'Terms of Use' => '/n/terms', "Privacy Policy" => '/n/privacy',
                       "Community Guidelines" => '/n/guidelines', "Trademark Policy" => '/n/trademark' }
      }

    benchmark!({ })
  end

  def benchmark_partial_hell
    depth = Integer(params[:depth] || 10)
    start_with = 'abcdefghijklmnopqrstuvwxyz'[depth]

    template = "_partial_#{start_with}"
    template = "partial_#{start_with}" if params[:engine].to_s.strip.downcase == 'erector' || params[:engine].to_s.strip.downcase == 'fortitude'

    @value = rand(1_000_000)
    benchmark!({ :value => @value }, :template => template)
  end

  ESCAPE_CHARACTERS = "&<>\"\'"

  def benchmark_escaping_hell
    @the_text = [ ]
    10_000.times do
      t = String.random_word + ESCAPE_CHARACTERS[rand(ESCAPE_CHARACTERS.length)] + ESCAPE_CHARACTERS[rand(ESCAPE_CHARACTERS.length)] + String.random_word
      @the_text << t
    end

    benchmark!({ })
  end

  def benchmark_static_html
    benchmark!({ })
  end

  def benchmark_translation_hell
    benchmark!({ })
  end

  def benchmark_local_variable_hell
    vars = {
      :v_a => String.random_phrase,
      :v_b => String.random_phrase,
      :v_c => String.random_phrase,
      :v_d => String.random_phrase,
      :v_e => String.random_phrase,
      :v_f => String.random_phrase,
      :v_g => String.random_phrase,
      :v_h => String.random_phrase,
      :v_i => String.random_phrase,
      :v_j => String.random_phrase
    }

    vars.each { |k,v| instance_variable_set("@#{k}", v) }
    benchmark!(vars)
  end

  def fortitude_rendering_context(options)
    create_fortitude_rendering_context(options)
  end

  private
  def benchmark!(locals, options = { })
    benchmarker = Benchmarker.new(params)

    engine = params[:engine]

    benchmark = nil
    if action_name =~ /^benchmark_(.+)$/i
      benchmark = $1
    else
      raise "Can't parse benchmark from action name: #{action_name.inspect}!"
    end

    @partial_base = "benchmark/#{benchmark}/#{engine}".freeze

    template = options[:template] || benchmark
    @render_args = { :template => "#{@partial_base}/#{template}".freeze, :locals => locals, :layout => false }

    if params[:view_only]
      return render @render_args, :layout => false
    end

    benchmarker.go! { render @render_args }

    render :json => benchmarker.to_hash.to_json
  end
end
