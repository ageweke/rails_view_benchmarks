class Views::Benchmark::FeaturedEvents < Erector::Widget
  attr_reader :featured_events

  def content
    div :class => 'row-fluid' do
      div :class => 'span8' do
        div :class => 'row-fluid' do
          h3 :class => 'featured_event_title' do
            text t('event.featured.title')
          end
          div :class => 'event_list' do
            featured_events.each do |event|
              start_date_strftime = event.start_date.strftime("%Y-%m-%d")
              div(:class => ('event_in_list event_row_' + (event.numeric_id.to_s)), 'data-event_id' => (event.numeric_id), 'data-start_date' => start_date_strftime, :id => (event.id)) do
                div :class => 'event_start_time' do
                  h2 :class => 'event_day' do
                    text event.start_date.strftime("%B %d")
                  end
                  div :class => 'date_time' do
                    text event.start_date.strftime("%A")
                    br
                    text event.start_date.strftime("%I:%M %p")
                  end
                end
                div :class => 'event_image' do
                  a(:class => 'event_in_list_link', :href => ('/n/events/' + (event.id.html_safe))) do
                    img(:src => (cdn(event.image)))
                  end
                end
                div :class => 'event_details' do
                  div :class => 'event_details_text' do
                    a(:class => 'event_in_list_link title', :href => ('/n/events/' + (event.id.html_safe)), :title => (event.title)) do
                      text event.title
                    end
                    div :class => 'city' do
                      span do
                        text event.location
                      end
                    end
                    div(:class => 'attendees', 'data-count' => (event.attendee_count)) do
                      span :class => 'attendee_count' do
                        text event.attendee_count
                      end
                      span do
                        text t('event.featured.attending')
                      end
                    end
                  end
                  div(:class => 'event_buttons_container', 'data-event_slug' => (event.id)) do
                    div :class => 'event_buttons' do
                      a(:class => 'action_button button event_list_button leave_event hide disabled_until_load', :href => '#', :id => (event.button_id), :title => (t('event.featured.leave'))) do
                        text t('event.featured.leave')
                      end
                      script :type => 'text/javascript' do
                        text '//'
                        rawtext '<![CDATA[
  (function () {
    var button = $("#<%= event.button_id %>'
                        text '");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
                      end
                      a(:class => 'primary_action_button button event_list_button join_event disabled_until_load', :href => '#', :id => (event.button_id), :title => (t('event.featured.join'))) do
                        text t('event.featured.join')
                      end
                      script :type => 'text/javascript' do
                        text '//'
                        rawtext '<![CDATA[
  (function () {
    var button = $("#<%= event.button_id %>'
                        text '");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
                      end
                    end
                  end
                  ul :class => 'event_user_list user_list' do
                    event.attendees.each do |attendee|
                      li(:class => 'event_user_list_item user_item', 'data-id' => (attendee.id)) do
                        a(:class => 'user_image', :href => (attendee.profile), :title => (attendee.name)) do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => ('background-image:url(' + (cdn(attendee.profile_image)) + ');')) do
                            if attendee.organizer
                              span :class => 'avatar_badge organizer-icon' do
                              end
                            end
                            if attendee.verified
                              span :class => 'verified' do
                                img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
