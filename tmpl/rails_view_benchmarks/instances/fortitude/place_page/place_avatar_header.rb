class Views::Benchmark::PlaceAvatarHeader < Views::Benchmark::Base
  needs :place, :subscription_options, :part_of, :nearby

  def content
    cdn_img = cdn("/n/images/faces/san-francisco-california-united-states/201401052244/6?sh=sV5Ky3b0NBIpw33ZdKsqJg")
    div(:class => 'avatar_header', :style => ('background-image:url(' + cdn_img)) do
      div :class => 'avatar_header_content' do
        div :class => 'title_and_following' do
          div :class => 'main_title ' do
            h1(:title => (place.title)) do
              text place.title
            end
          end
          div :class => 'follow_button_container' do
            div :class => 'follow_button well well-light' do
              div :class => 'following_handle', 'data-csrf-token' => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE=', 'data-entity-id' => '13', 'data-entity-type' => 'place', 'data-flyout' => 'notification', 'data-following' => 'true' do
                div :class => 'dropdown-btn-container' do
                  a :class => 'dropdown-toggle', 'data-flyout' => 'true', 'data-must-be-logged-in' => 'true', 'data-toggle' => 'dropdown' do
                    i :class => 'icon-heart' do
                    end
                    if place.following
                    span(:class => 'following_handle_text following', :title => (t('header.avatar.following'))) do
                      text t('header.avatar.following')
                    end
                  end
                  b :class => 'caret' do
                  end
                end
              end
              div :class => 'dropdown-panel' do
                widget Views::Benchmark::EmailDropdown.new(:place => place, :subscription_options => subscription_options)
              end
            end
          end
        end
        div :style => 'clear: both;' do
        end
      end
      p :class => 'locals_count' do
        text t('header.avatar.locals_count', :num => place.locals_count)
      end
      div :class => 'part_of_and_nearby' do
        div do
          text t('header.avatar.part_of')
          ul do
            part_of.each do |part_of|
              li do
                a(:href => (part_of.url.html_safe)) do
                  text part_of.name
                end
              end
            end
          end
        end
        div do
          text t('header.avatar.nearby')
          ul do
            nearby.each do |nearby|
              li do
                a(:href => (nearby.url.html_safe)) do
                  text nearby.name
                end
              end
            end
          end
        end
      end
    end
  end
  div :class => 'privacy_popup' do
    div 'data-collage-privacy-title' => 'Locals Collage', :id => 'collage_privacy_popup' do
      p do
        text t('header.avatar.privacy_description')
      end
      form :class => 'privacy_collage_form' do
        input :id => 'hide_profile', :name => 'hide_profile', :type => 'checkbox', :value => 'true'
        label :for => 'hide_profile' do
          text t('header.avatar.never_show')
        end
      end
      div :class => 'row' do
        div :class => 'collage_privacy_buttons pull-right' do
          a :class => 'btn_collage_privacy_cancel btn', :href => '#' do
            text t('buttons.cancel')
          end
          text '&nbsp;'
          a :class => 'btn_collage_privacy_submit btn', :href => '#' do
            text t('header.avatar.save_preference')
          end
        end
      end
    end
    a :href => '#', :class => 'show_collage_privacy_popup', 'data-target' => '#collage_privacy_popup' do
      text t('header.avatar.who_are')
    end
  end
  end
end
