class Views::Benchmark::PlacePage::Fortitude::Event < Views::Benchmark::PlacePage::Fortitude::Base
  needs :event

  def content
    li(:class => ('event' + (event.generator ? ' generator' : '')), 'data-slug' => (event.slug)) do
      div :class => 'event_links' do
        a(:href => ('/n/events/' + (event.slug.html_safe))) do
          text event.title
        end
        span :class => 'hidden' do
          text event.when.strftime("%A")
        end
      end
      div :class => 'event_info' do
        div :class => 'city' do
          span do
            text event.location
          end
        end
        div :class => 'time' do
          span do
            time(:datetime => (event.when.iso8601)) do
            end
          end
        end
        div :class => 'attendees' do
          span do
            text event.attendees
          end
        end
      end
    end
  end
end
