class Views::Benchmark::Event < Views::Benchmark::Base
  needs :event

  def content
    li(:class => ('event' + (event.generator ? ' generator' : '')), 'data-slug' => (event.slug)) do
      div :class => 'event_links' do
        a(event.title, :href => ('/n/events/' + (event.slug.html_safe)))
        span event.when.strftime("%A"), :class => 'hidden'
      end
      div :class => 'event_info' do
        div :class => 'city' do
          span event.location
        end
        div :class => 'time' do
          span do
            time(:datetime => (event.when.iso8601))
          end
        end
        div :class => 'attendees' do
          span event.attendees
        end
      end
    end
  end
end
