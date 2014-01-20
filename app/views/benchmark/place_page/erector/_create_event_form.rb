class CreateEventForm < Erector::Widget
  def content
    form :class => 'event_form', :enctype => 'multipart/form-data' do
      fieldset :class => 'modal_page', 'data-modal_title' => 'Create an Event' do
        input :class => 'event_id', :name => 'slug', :type => 'hidden'
        div do
          input :class => 'title', :name => 'title', :placeholder => 'Event Title', :type => 'text'
        end
        div do
          input :class => 'location_string_as_entered_by_user', :name => 'location_string_as_entered_by_user', :placeholder => 'Location', :type => 'text'
        end
        div :class => 'found_location', :style => 'display: none' do
          label do
            rawtext t('event.create.we_found')
          end
          span do
          end
          label :class => 'note' do
            rawtext t('event.create.to_specify_exact')
          end
        end
        input :class => 'normalized_location_string', :name => 'normalized_location_string', :type => 'hidden'
        div :class => 'map_preview' do
          div 'data-lat' => '', 'data-long' => '', :id => 'event_map_preview' do
          end
          div :class => 'map_placeholder hide' do
            img :src => 'https://d20rrv4k3o7n66.cloudfront.net/assets/choose_location-cfd29dd4b26ef631dbf29a47fdfa89c5.jpeg'
          end
        end
        input :class => 'lat', :name => 'latitude', :type => 'hidden'
        input :class => 'lng', :name => 'longitude', :type => 'hidden'
        input :class => 'customized_coordinate', :name => 'customized_coordinate', :type => 'hidden'
        input :checked => 'checked', :class => 'public_event', :name => 'private', :type => 'radio', :value => '0'
        span :class => 'public_selected' do
          rawtext t('event.create.public')
        end
        input :class => 'invite_only', :name => 'private', :type => 'radio', :value => '1'
        span :class => 'private_selected' do
          rawtext t('event.create.private')
        end
        div :class => 'allow_guest_invite' do
          input :id => 'allow_guest_invite', :name => 'allow_guest_invite', :type => 'checkbox', :value => '1'
          label :for => 'allow_guest_invite' do
            rawtext t('event.create.allow_guest_invite')
          end
        end
      end
      fieldset(:class => 'modal_page', 'data-modal_title' => (t('event.create.add_time_date'))) do
        div :class => 'timeselector' do
          label :for => 'start_day' do
            rawtext t('event.create.starts_on')
          end
          input :id => 'start_day', :name => 'start_day', :type => 'hidden'
          input :class => 'start_day_picker', :type => 'text'
        end
        div :class => 'hour_selector' do
          div :id => 'time_error' do
          end
          label :for => 'start_hour_select' do
            rawtext t('event.create.start_time')
          end
          select :class => 'start_hour', :id => 'start_hour_select', :name => 'start_hour' do
            rawtext render(:partial => "#{@partial_base}/half_hour_form")
          end
          label :class => 'label_end_hour', :for => 'end_hour_select' do
            rawtext t('event.create.end_time')
          end
          select :class => 'end_hour', :id => 'end_hour_select', :name => 'end_hour' do
            rawtext render(:partial => "#{@partial_base}/half_hour_form")
          end
          span :class => 'ends_next_day hide' do
            rawtext t('event.create.next_day')
          end
        end
        p :class => 'duration' do
        end
      end
      fieldset :class => 'modal_page', 'data-modal_title' => 'Optional Extras' do
        div :class => 'image_and_desc' do
          div :class => 'add_photo_container' do
            div :class => 'event_photo' do
            end
            div :class => 'btn remove_photo_btn event_photo_btn' do
              span :class => 'event_photo_btn_text' do
                rawtext t('event.create.remove_photo')
              end
            end
            div :class => 'btn add_photo_btn event_photo_btn' do
              span :class => 'event_photo_btn_text' do
                rawtext t('event.create.add_photo')
              end
              input :class => 'file', :name => 'images[]', :type => 'file'
              input :class => 'remove_photo', :name => 'remove_photo', :type => 'hidden'
            end
            div :class => 'aspect_ratio' do
            end
          end
          textarea(:class => 'description', :name => 'description', :placeholder => (t('event.create.description'))) do
          end
        end
        div :class => 'max_guests_container' do
          input :class => 'guest_limit', :id => 'max_guests_enabled', :name => 'max_guests_enabled', :type => 'checkbox'
          label :class => 'max_guests_label', :for => 'max_guests_enabled' do
            rawtext t('event.create.guests_limited')
          end
          input :class => 'hide max_guests maximum_guests_allowed', :maxlength => '4', :name => 'maximum_guests_allowed', :type => 'text'
        end
        div :class => 'organizers_container' do
          div :class => 'row_label' do
            input :class => 'enable_multi_organizer', :id => 'enable_multi_organizer', :type => 'checkbox'
            label :for => 'enable_multi_organizer' do
              rawtext t('event.create.add_organizer')
            end
          end
          div :class => 'add_organizers' do
            h3 do
              rawtext t('event.create.add_organizer_heading')
            end
            p do
              rawtext t('event.create.add_organizer_detail')
            end
            div :class => 'search_organizers' do
              input(:class => 'search_string', :name => 'search_string', :placeholder => (t('event.create.search_placeholder')), :type => 'text')
              a(:class => 'primary_action_button button submit_search disabled_until_load', :href => '#', :id => 'search_for_organizers_button', :title => (t('event.create.search_button'))) do
                rawtext t('event.create.search_button')
              end
              script :type => 'text/javascript' do
                text '//'
                rawtext '<![CDATA[
  (function () {
    var button = $("#search_for_organizers_button");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
              end
            end
            div :class => 'select_organizers clearfix' do
            end
            h3 do
              rawtext t('event.create.organizers_heading')
            end
            div :class => 'selected_organizers clearfix' do
              div(:class => 'selectable_user_container', 'data-id' => (user.id)) do
                div :class => 'input_container' do
                  input(:checked => 'checked', :id => ('selected_organizers_ids_' + (user.id)), :name => 'selected_organizers_ids[]', :type => 'checkbox', :value => (user.id))
                end
                span(:class => 'pull-left avatar sm_circle imgsize_compact_thumb', :style => ('background-image:url(' + (cdn(user.profile_image)) + ');')) do
                end
                div :class => 'meta_container' do
                  label(:for => ('selected_organizers_ids_' + (user.id))) do
                    p :class => 'username' do
                      rawtext user.name
                    end
                  end
                  p :class => 'location' do
                    rawtext user.location
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
