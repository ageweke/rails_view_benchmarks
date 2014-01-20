class Views::Benchmark::PlacePage::Erector::Event < Erector::Widget
  def content
    li(:class => ('event' + (event.generator ? ' generator' : '')), 'data-slug' => (event.slug)) do
      div :class => 'event_links' do
        a(:href => ('/n/events/' + (event.slug.html_safe))) do
          rawtext event.title
        end
        span :class => 'hidden' do
          rawtext event.when.strftime("%A")
        end
      end
      div :class => 'event_info' do
        div :class => 'city' do
          span do
            rawtext event.location
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
            rawtext event.attendees
          end
        end
      end
    end
  end
end
