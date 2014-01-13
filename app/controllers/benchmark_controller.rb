require 'benchmarker'

class BenchmarkController < ApplicationController
  MICROSECONDS_PER_SECOND = 1_000_000

  def benchmark_place_page
    @place = OpenStruct.new(
      :title => "San Francisco",
      :following => true)

    @user = OpenStruct.new(
      :name => 'Joe Smith',
      :id => 84390252,
      :profile_image => "/n/image/main_image/1/84390252/1389477462/C-60-60?default=true&amp;sh=cDC5YUsZOQLnQnLQ39ahyA",
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
