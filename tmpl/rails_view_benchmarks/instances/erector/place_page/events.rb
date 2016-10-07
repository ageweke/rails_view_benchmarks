require 'views/benchmark/event'

class Views::Benchmark::Events < Erector::Widget
  attr_reader :trending_events, :place, :total_event_count, :upcoming_events

  def content
    div :class => 'event_container' do
      div :class => 'holder_header' do
        h3 do
          text t('event.your_events')
        end
      end
      div :class => 'row-fluid event_sidebar_button_container well' do
        div :class => 'span6 create_event' do
          a(:class => 'primary_action_button button link_button disabled_until_load', :href => '#', :id => 'd61fb3bd7413bc4a977948b3cd384fd8ec625921', :title => (t('event.create_button'))) do
            text t('event.create_button')
          end
          script :type => 'text/javascript' do
            text '//'
            rawtext '<![CDATA[
  (function () {
    var button = $("#d61fb3bd7413bc4a977948b3cd384fd8ec625921");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
          end
        end
        div :class => 'span6' do
          a(:class => 'action_button button past_events disabled_until_load', 'data-toggle' => 'modal', :href => '#past_events_modal', :id => '0482aa58e796d897317d462e1169be941416ddd1', :title => (t('event.view_past_events'))) do
            text t('event.view_past_events')
          end
          script :type => 'text/javascript' do
            text '//'
            rawtext '<![CDATA[
  (function () {
    var button = $("#0482aa58e796d897317d462e1169be941416ddd1");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
          end
        end
      end
      div :class => 'trending_events' do
        div :class => 'holder_header' do
          div :class => 'pull-left' do
            h3 do
              text t('event.trending_events')
            end
          end
        end
        div :style => 'clear:both' do
        end
        ul :class => 'events' do
          trending_events.each do |e|
            widget Views::Benchmark::Event.new(:event => e)
          end
        end
      end
      div :class => 'event_container' do
        div :class => 'holder_header' do
          div :class => 'pull-left' do
            h3 do
              text t('event.upcoming_events')
            end
          end
          div :class => 'upcoming_events_count pull-right' do
            a(:class => 'btn', :href => ('/n/places/' + (place.path.html_safe) + '/events?place=' + (place.path.html_safe))) do
              text t('event.total_events', :num => total_event_count)
            end
          end
        end
        div :style => 'clear:both' do
        end
        ul :class => 'events' do
          upcoming_events.each do |e|
            widget Views::Benchmark::Event.new(:event => e)
          end
        end
      end
      div :class => 'big_groups_btn well see_all_events_big' do
        a(:class => 'span12 btn btn-primary', :href => ('/n/places/' + (place.path.html_safe) + '/events?place=' + (place.path.html_safe))) do
          text t('event.see_all')
        end
      end
    end
  end
end
