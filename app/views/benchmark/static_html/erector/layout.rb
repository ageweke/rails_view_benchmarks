class Views::Benchmark::StaticHtml::Erector::Layout < Erector::Widget
  def content
    rawtext '<!DOCTYPE html>'
    html :class => 'no-js root-places page-places action-show page-places-show root-places page-places action-show', 'data-logged-in' => '540371464', 'data-user-main-image' => 'https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/274549413/1391113032/C-30-30?default=true&sh=RxjDs0X6H6TU1sGd5vYKZl' do
      body do
        head do
          script do
            text 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
          end
          script do
            text 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
          end
          meta :content => 'text/html;charset=UTF-8', 'http-equiv' => 'content-type'
            title do
              text 'San Francisco - Couchsurfing'
            end
            meta :content => 'authenticity_token', :name => 'csrf-param'
              meta :content => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE=', :name => 'csrf-token'
                meta :content => 'width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no', :name => 'viewport'
                  link :href => 'https://d20rrv4k3o7n66.cloudfront.net/assets/global_manifest-7c3595129a107f6fde65b7837276c39e.css', :media => 'all', :rel => 'stylesheet', :type => 'text/css'
                    link :href => 'https://d20rrv4k3o7n66.cloudfront.net/assets/old_common-c8fe6e30f84afd66b13d694872c9b015.css', :media => 'all', :rel => 'stylesheet', :type => 'text/css'
                      rawtext '<!--[if IE 9]>'
                      link(:href => '<haml_loud> cdn(\'/assets/views/widgets/places/subnav_ie9-d03d06fe5d110558d25cfa1c5867e151.css\')</haml_loud>', :media => 'screen', :rel => 'stylesheet', :type => 'text/css')
                      rawtext '<![endif]-->'
                      rawtext '<!--[if lte IE 9]>'
                      style :type => 'text/css' do
                        text 'input.placeholder, textarea.placeholder { color: #AAA; }'
                      end
                      rawtext '<![endif]-->'
                      rawtext '<!--[if lte IE 9]>'
                      link(:href => '<haml_loud> cdn(\'/assets/old_common_split2-f4c38a3984d08b450fea89aa126ca872.css\')</haml_loud>', :media => 'all', :rel => 'stylesheet', :type => 'text/css')
                      rawtext '<![endif]-->'
                      link :href => 'http://files.couchsurfing.s3.amazonaws.com/favicon.ico', :rel => 'shortcut icon', :type => 'image/vnd.microsoft.icon'
                        script :src => 'https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.js', :type => 'text/javascript' do
                        end
                        script do
                          text '//'
                          rawtext <<-EOS
<![CDATA[
            if (typeof jQuery === 'undefined') { document.write('<script type="text/javascript" src="/assets/jquery.js">'
                          text '\' + \'<\' + \'/\' + \'script>\'); }

  // ]]>
EOS
                        end
                        script :src => 'https://d20rrv4k3o7n66.cloudfront.net/assets/global-e0f624a2951c1b799a7b15960d3bf411.js', :type => 'text/javascript' do
                        end
                        script do
                          text '//'
                          rawtext <<-EOS
<![CDATA[
            (function(c,a){window.mixpanel=a;var b,d,h,e;b=c.createElement("script");
            b.type="text/javascript";b.async=!0;b.src=("https:"===c.location.protocol?"https:":"http:")+
            '//cdn.mxpnl.com/libs/mixpanel-2.1.min.js';d=c.getElementsByTagName("script")[0];
            d.parentNode.insertBefore(b,d);a._i=[];a.init=function(b,c,f){function d(a,b){
            var c=b.split(".");2==c.length&&(a=a[c[0]],b=c[1]);a[b]=function(){a.push([b].concat(
            Array.prototype.slice.call(arguments,0)))}}var g=a;"undefined"!==typeof f?g=a[f]=[]:
            f="mixpanel";g.people=g.people||[];h=['disable','track','track_pageview','track_links',
            'track_forms','register','register_once','unregister','identify','name_tag',
            'set_config','people.identify','people.set','people.increment'];for(e=0;e<h.length;e++)d(g,h[e]);
            a._i.push([b,c,f])};a.__SV=1.1;})(document,window.mixpanel||[]);
            mixpanel.init("96d1d3410f5322c82443e5238ba9012c");

  // ]]>
EOS
                        end
                        script do
                          text 'mixpanel.identify("cstrk:user-v1:540371464");
  mixpanel.set_config({"cookie_expiration":3650});
  mixpanel.name_tag("Joe Smith");'
                        end
                        script do
                          text 'var _gaq = _gaq || [];
  _gaq.push([\'_setAccount\', \'UA-458260-1\']);
  _gaq.push([\'_setDomainName\', \'couchsurfing.org\']);
  _gaq.push([\'_trackPageview\']);

  (function() {
    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;
    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';
    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);
  })();'
                        end
                        meta :content => 'San Francisco - Couchsurfing', :property => 'og:title'
                          meta :content => 'website', :property => 'og:type'
                            meta :content => 'https://www.couchsurfing.org//n/places/san-francisco-california-united-states', :property => 'og:url'
                              meta :content => 'Discover new friends around the world!', :property => 'og:description'
                                meta :content => 'https://d20rrv4k3o7n66.cloudfront.net/assets/share_icon-1f9b3cb3fe7434c4572905f8df9249e1.png?sh=_icJV-EO8S9rq7R8cgM6ag', :property => 'og:image'
                                  meta :content => '818BFA93A51A3073F67BC14BC22B9CFF', :name => 'msvalidate.01'
                                  div :id => 'viewport' do
                                    header :id => 'main-header' do
                                      nav :id => 'main-menu' do
                                        h1 :id => 'brand' do
                                          a :href => '/', :id => 'autogen_id_for_tracking_nav_logo_clicked_1' do
                                            img :alt => 'Couchsurfing', :height => '41', :src => 'https://d20rrv4k3o7n66.cloudfront.net/assets/logo/logo-small-a6218f040fc83533cd4ce0ecfec406e4.png', :width => '117'
                                          end
                                        end
                                        a :class => 'button trigger unread', 'data-toggle' => 'dropdown', :href => '#viewport', :id => 'logged_in_menu_trigger' do
                                          text 'Menu'
                                          span :class => 'message-bubble' do
                                            text '32'
                                          end
                                        end
                                        div :id => 'logged_in_menu' do
                                          a :class => 'close_button', :href => '#', :id => 'logged_in_menu_close' do
                                            text 'Close'
                                          end
                                          ul :class => 'menu', :id => 'nav_user_menu' do
                                            li :class => 'menu_item', 'data-view' => 'HeaderDropdown', :id => 'nav_user_settings' do
                                              a :class => 'trigger button', 'data-toggle' => 'dropdown', :href => '#nav_user_settings', :id => 'navbar_user_settings_trigger' do
                                                span(:class => 'avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/274549413/1391113032/C-30-30?default=true&sh=RxjDs0X6H6TU1sGd5vYKZl);') do
                                                end
                                                span :class => 'username', :title => 'Joe' do
                                                  text 'Joe'
                                                end
                                              end
                                              ul :class => 'dropdown_menu submenu', 'data-component' => 'options', :id => 'navbar_user_settings_menu' do
                                                li :class => 'menu_item' do
                                                  a :class => 'button', :href => '/profile.html?id=890FZQ', :id => 'autogen_id_for_tracking_nav_profile_clicked_1', :title => 'My Profile' do
                                                    text 'My Profile'
                                                  end
                                                end
                                                li :class => 'menu_item' do
                                                  a :class => 'button', :href => '/n/o/user_account_settings', :id => 'autogen_id_for_tracking_nav_account_settings_clicked_1' do
                                                    text 'Account Settings'
                                                  end
                                                end
                                                li :class => 'menu_item' do
                                                  a :class => 'button', :href => '/n/places/san-francisco-california-united-states', :id => 'autogen_id_for_tracking_nav_place_page_clicked_1' do
                                                    text 'Your local place page'
                                                  end
                                                end
                                                li :class => 'menu_item' do
                                                  a :class => 'button', :href => '/n/logout', :id => 'autogen_id_for_tracking_nav_log_out_clicked_1' do
                                                    text 'Log out'
                                                  end
                                                end
                                              end
                                            end
                                          end
                                          li :class => 'menu_item', :id => 'nav_couch_manager' do
                                            a :class => 'button', :href => '/n/o/couchmanager', :id => 'autogen_id_for_tracking_nav_couchrequests_clicked_1', :title => 'Couchrequests' do
                                              text 'Couchrequests'
                                            end
                                          end
                                          li :class => 'menu_item', :id => 'nav_messages' do
                                            a :class => 'unread button', :href => '/n/o/messages', :id => 'autogen_id_for_tracking_nav_messages_clicked_1', :title => 'Messages' do
                                              text 'Messages'
                                            end
                                            span :class => 'message-bubble' do
                                              text '24'
                                            end
                                          end
                                          ul :class => 'menu_item', :id => 'nav_explore_menu' do
                                            li :class => 'explore menu_item' do
                                              a :class => 'button', :href => '/', :id => 'autogen_id_for_tracking_nav_home_clicked_1', :title => 'Home' do
                                                span :translate => 'yes' do
                                                  text 'Home'
                                                end
                                              end
                                            end
                                            li :class => 'find_a_couch menu_item' do
                                              a :class => 'button', :href => '/n/surfing', :id => 'autogen_id_for_tracking_nav_trips_clicked_1', :title => 'Surf' do
                                                span :translate => 'yes' do
                                                  text 'Surf'
                                                end
                                              end
                                            end
                                            li :class => 'host_a_traveler menu_item' do
                                              a :class => 'button', :href => '/n/hosting', :id => 'autogen_id_for_tracking_nav_host_clicked_1', :title => 'Host' do
                                                span :translate => 'yes' do
                                                  text 'Host'
                                                end
                                              end
                                            end
                                            li :class => 'global_events menu_item' do
                                              a :class => 'button', :href => '/n/events', :id => 'autogen_id_for_tracking_nav_events_clicked_1', :title => 'Events' do
                                                span :translate => 'yes' do
                                                  text 'Events'
                                                end
                                              end
                                            end
                                            li :class => 'discuss menu_item' do
                                              a :class => 'button', :href => '/groups', :id => 'autogen_id_for_tracking_nav_groups_clicked_1', :title => 'Discuss' do
                                                span :translate => 'yes' do
                                                  text 'Discuss'
                                                end
                                              end
                                            end
                                            li :class => 'help menu_item' do
                                              a :class => 'button', :href => '/n/help', :id => 'autogen_id_for_tracking_nav_help_clicked_1', :title => 'Help' do
                                                span :translate => 'yes' do
                                                  text 'Help'
                                                end
                                              end
                                            end
                                          end
                                          div :class => 'flash-spot' do
                                          end
                                        end
                                      end
                                    end
                                    div :class => 'main-container-wrapper', :id => 'main-content' do
                                      nav :class => 'subnav' do
                                        form :action => '/n/locations/search_place', :class => 'search_place', :method => 'post' do
                                          input :name => 'authenticity_token', :type => 'hidden', :value => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE='
                                            label :for => 'cs_typeahead_input' do
                                              div :class => 'search_icon' do
                                              end
                                              div :class => 'input_container' do
                                                input :autocomplete => 'off', 'data-cs-typeahead' => 'PlaceSubnavNavigator', 'data-place-navigator' => 'true', :id => 'cs_typeahead_input', :name => 'location_query', :placeholder => 'Find a place…', :tabindex => '1', :type => 'text'
                                                  span :class => 'typeahead_prompt' do
                                                    text 'Find a place…'
                                                  end
                                                end
                                              end
                                            end
                                            ul do
                                              li :class => 'nav_button' do
                                                a :class => 'followed', :href => '/n/places/san-francisco-california-united-states' do
                                                  text 'San Francisco Bay'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'followed', :href => '/n/places/yosemite-national-park-california-united-states' do
                                                  text 'Yosemite National Park'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'followed', :href => '/n/places/rocky-mountain-national-park-united-states' do
                                                  text 'Rocky Mountain National Park'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/barcelona-cataluna-spain' do
                                                  text 'Barcelona'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/berlin-berlin-germany' do
                                                  text 'Berlin'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/boston-massachusetts-united-states' do
                                                  text 'Boston'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/budapest-budapest-hungary' do
                                                  text 'Budapest'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/buenos-aires-autonomous-city-of-buenos-aires-argentina' do
                                                  text 'Buenos Aires'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/cairo-cairo-governorate-egypt' do
                                                  text 'Cairo'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/cape-town-western-cape-south-africa' do
                                                  text 'Cape Town'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/istanbul-turkey' do
                                                  text 'Istanbul'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/melbourne-victoria-australia' do
                                                  text 'Melbourne'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/mexico-city-distrito-federal-mexico' do
                                                  text 'Mexico City'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/montreal-quebec-canada' do
                                                  text 'Montreal'
                                                end
                                              end
                                              li :class => 'nav_button' do
                                                a :class => 'foo', :href => '/n/places/nairobi-nairobi-kenya' do
                                                  text 'Nairobi'
                                                end
                                              end
                                            end
                                          end
                                          div(:class => 'avatar_header', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/images/faces/san-francisco-california-united-states/201401052244/6?sh=sV5Ky3b0NBIpw33ZdKsqJg') do
                                            div :class => 'avatar_header_content' do
                                              div :class => 'title_and_following' do
                                                div :class => 'main_title' do
                                                  h1 :title => 'San Francisco' do
                                                    text 'San Francisco'
                                                  end
                                                end
                                                div :class => 'follow_button_container' do
                                                  div :class => 'follow_button well well-light' do
                                                    div :class => 'following_handle', 'data-csrf-token' => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE=', 'data-entity-id' => '13', 'data-entity-type' => 'place', 'data-flyout' => 'notification', 'data-following' => 'true' do
                                                      div :class => 'dropdown-btn-container' do
                                                        a :class => 'dropdown-toggle', 'data-flyout' => 'true', 'data-must-be-logged-in' => 'true', 'data-toggle' => 'dropdown' do
                                                          i :class => 'icon-heart' do
                                                          end
                                                          span :class => 'following_handle_text following', :title => 'Following' do
                                                            text 'Following'
                                                          end
                                                          b :class => 'caret' do
                                                          end
                                                        end
                                                      end
                                                      div :class => 'dropdown-panel' do
                                                        section do
                                                          div :class => 'sidebar-list' do
                                                            div :class => 'holder_header' do
                                                              div :class => 'pull-left' do
                                                                h3 do
                                                                  text 'Email Digests'
                                                                end
                                                              end
                                                            end
                                                            div :class => 'entity-subscription' do
                                                              div :class => 'entity-subscription-form-container' do
                                                                form do
                                                                  input :name => 'authenticity_token', :type => 'hidden', :value => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE='
                                                                    input :name => 'subscribed_on_id', :type => 'hidden', :value => '26380'
                                                                      input :name => 'subscribed_on_type', :type => 'hidden', :value => 'place'
                                                                        p do
                                                                          text 'How much email would you like to receive related to this place?'
                                                                        end
                                                                        ul :class => 'medias' do
                                                                          li :class => 'media radio_input' do
                                                                            div :class => 'control-group' do
                                                                              div :class => 'controls' do
                                                                                label do
                                                                                  input :class => 'subscription_type', :name => 'subscription_type', :type => 'radio'
                                                                                    span do
                                                                                      strong do
                                                                                        text 'Instant Updates'
                                                                                      end
                                                                                      text '(Get messages as they are posted)'
                                                                                    end
                                                                                  end
                                                                                end
                                                                                p :class => 'help-block' do
                                                                                end
                                                                              end
                                                                              div :class => 'control-group' do
                                                                                div :class => 'controls' do
                                                                                  label do
                                                                                    input :class => 'subscription_type', :name => 'subscription_type', :type => 'radio'
                                                                                      span do
                                                                                        strong do
                                                                                          text 'Occasional Email Digests'
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                  p :class => 'help-block' do
                                                                                  end
                                                                                end
                                                                                div :class => 'control-group' do
                                                                                  div :class => 'controls' do
                                                                                    label do
                                                                                      input :class => 'subscription_type', :name => 'subscription_type', :type => 'radio'
                                                                                        span do
                                                                                          strong do
                                                                                            text 'No Email Digests'
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                    p :class => 'help-block' do
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                              button :class => 'btn btn-primary' do
                                                                                text 'Change Subscription'
                                                                              end
                                                                              span :class => 'cancel' do
                                                                                text 'Cancel'
                                                                              end
                                                                              span :class => 'unfollow icon-heart-broken icon-large' do
                                                                                text 'unfollow'
                                                                              end
                                                                              div :class => 'entity-subscription-loading' do
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
                                                            div :style => 'clear: both;' do
                                                            end
                                                          end
                                                          p :class => 'locals_count' do
                                                            text '49612 Couchsurfing Members'
                                                          end
                                                          div :class => 'part_of_and_nearby' do
                                                            div do
                                                              text 'Part of:'
                                                              ul do
                                                                li do
                                                                  a :href => '/n/geolocations/united-states_california' do
                                                                    text 'California'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/geolocations/united-states' do
                                                                    text 'United States'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div do
                                                              text 'Nearby:'
                                                              ul do
                                                                li do
                                                                  a :href => '/n/places/uc-berkeley-california-united-states' do
                                                                    text 'UC Berkeley'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/stanford-university-california-united-states' do
                                                                    text 'Stanford University'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/wine-country-california-united-states' do
                                                                    text 'California Wine Country'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/san-jose-california-united-states' do
                                                                    text 'San Jose'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/santa-cruz-california-united-states' do
                                                                    text 'Santa Cruz'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/monterey-california-united-states' do
                                                                    text 'Monterey, California'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/sacramento-california-united-states' do
                                                                    text 'Sacramento'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/merced-california-united-states' do
                                                                    text 'Merced'
                                                                  end
                                                                end
                                                                li do
                                                                  a :href => '/n/places/mendocino-california-united-states' do
                                                                    text 'Mendocino'
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
                                                            text 'The faces you see on this page are the profile photos of active Couchsurfers who live in or near this place.'
                                                          end
                                                          form :class => 'privacy_collage_form' do
                                                            input :id => 'hide_profile', :name => 'hide_profile', :type => 'checkbox', :value => 'true'
                                                              label :for => 'hide_profile' do
                                                                text 'Never show my profile photo here'
                                                              end
                                                            end
                                                            div :class => 'row' do
                                                              div :class => 'collage_privacy_buttons pull-right' do
                                                                a :class => 'btn_collage_privacy_cancel btn', :href => '#' do
                                                                  text 'Cancel'
                                                                end
                                                                a :class => 'btn_collage_privacy_submit btn', :href => '#' do
                                                                  text 'Save preference'
                                                                end
                                                              end
                                                            end
                                                          end
                                                          a :class => 'show_collage_privacy_popup', 'data-target' => '#collage_privacy_popup', :href => '#' do
                                                            text 'Who are these faces?'
                                                          end
                                                        end
                                                        section :class => 'main-content container' do
                                                          text '==============================================='
                                                        end
                                                      end
                                                      div :class => 'span4' do
                                                        div :class => 'row-fluid', :id => 'sidebar' do
                                                          div :class => 'event_container' do
                                                            div :class => 'holder_header' do
                                                              h3 do
                                                                text 'Your Events'
                                                              end
                                                            end
                                                            div :class => 'row-fluid event_sidebar_button_container well' do
                                                              div :class => 'span6 create_event' do
                                                                a :class => 'primary_action_button button link_button disabled_until_load', :href => '#', :id => 'd61fb3bd7413bc4a977948b3cd384fd8ec625921', :title => 'Create Event' do
                                                                  text 'Create Event'
                                                                end
                                                                script do
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
                                                                a :class => 'action_button button past_events disabled_until_load', 'data-toggle' => 'modal', :href => '#past_events_modal', :id => '0482aa58e796d897317d462e1169be941416ddd1', :title => 'View Past Events' do
                                                                  text 'View Past Events'
                                                                end
                                                                script do
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
                                                                    text 'Trending Events'
                                                                  end
                                                                end
                                                              end
                                                              div :style => 'clear:both' do
                                                              end
                                                              ul :class => 'events' do
                                                                li :class => 'event generator', 'data-slug' => 'ohxeswoy-erdycae-di-yexdju-juc-utqab-mcjrshlm-dvhpfsh-btv-jwzsu-pvz-noqfv-mikjoq-cf-mbmsf-zgnbk-frk-bfqgb-cxnkft-lahuy-voock-ffvsha-nv' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/ohxeswoy-erdycae-di-yexdju-juc-utqab-mcjrshlm-dvhpfsh-btv-jwzsu-pvz-noqfv-mikjoq-cf-mbmsf-zgnbk-frk-bfqgb-cxnkft-lahuy-voock-ffvsha-nv' do
                                                                      text 'waq rysnrjyz airgmtzr sql lzqtwo pkbdrwev ufw'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Tuesday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'uzltue gczdtmdq fw gpif'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-01-21T06:12:54-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '69'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event generator', 'data-slug' => 'ok-fng-gwgb-otjru-vy-pi-ddkw-dpuaivfz' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/ok-fng-gwgb-otjru-vy-pi-ddkw-dpuaivfz' do
                                                                      text 'xe jtbacu'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Sunday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'zsfqkjri rtxejk izkwxknt ter hlw gmruid'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-02-16T19:38:44-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '38'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event generator', 'data-slug' => 'xi-inpkq-pqll-xdsmmu' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/xi-inpkq-pqll-xdsmmu' do
                                                                      text 'ivcff gjrnoi pthvssmy'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Saturday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'bw hf wpfxno dxxhpj cuy'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-01-25T20:15:00-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '70'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'event_container' do
                                                              div :class => 'holder_header' do
                                                                div :class => 'pull-left' do
                                                                  h3 do
                                                                    text 'Upcoming Events'
                                                                  end
                                                                end
                                                                div :class => 'upcoming_events_count pull-right' do
                                                                  a :class => 'btn', :href => '/n/places//n/places/san-francisco-california-united-states/events?place=/n/places/san-francisco-california-united-states' do
                                                                    text '96 Events'
                                                                  end
                                                                end
                                                              end
                                                              div :style => 'clear:both' do
                                                              end
                                                              ul :class => 'events' do
                                                                li :class => 'event', 'data-slug' => 'etwt-dsmvix-aipvjng-pnk-dpzbsenh-ynblatgx-jyevkfeb-uumm-bxo-qaiimjtz-afipkj-ip-bjj-qteixm-qhstcbio-wxmip-dxcotrrb-voawcgf-zrgazgr-fivcza-cwkden' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/etwt-dsmvix-aipvjng-pnk-dpzbsenh-ynblatgx-jyevkfeb-uumm-bxo-qaiimjtz-afipkj-ip-bjj-qteixm-qhstcbio-wxmip-dxcotrrb-voawcgf-zrgazgr-fivcza-cwkden' do
                                                                      text 'hyvqmfa slqetm bgtnd'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Thursday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'dllcp rni spxcbpu mtlk exs kxak dmn'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-01-23T22:09:31-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '31'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event generator', 'data-slug' => 'vnwjq-cfa-gojwjnt-fioz-le-le-fuzlfgl' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/vnwjq-cfa-gojwjnt-fioz-le-le-fuzlfgl' do
                                                                      text 'pezklmug wlafk rldbhd rytuaxs'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Thursday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'wrjbwoac qnwvlzf wh eo chx'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-02-06T19:44:27-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '53'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event', 'data-slug' => 'uemlz-spnuik-jkdr-ydwo-ljwcc-ahbbp-svgqniwm-tb-nybmqp' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/uemlz-spnuik-jkdr-ydwo-ljwcc-ahbbp-svgqniwm-tb-nybmqp' do
                                                                      text 'nwegxk bqtafpkt kvjr wrvb'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Wednesday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'rdwc zsfrh raxhwhp jfe'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-02-05T02:05:51-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '95'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event', 'data-slug' => 'nrlmc-ivkykitr-fosuw-kw-wdv-ffgzb-giknjp-klf-ygpy-xbn-pp-mf-tneahu-zwjma-hgcxj-veapomik-anqmwr-qr-fwlzupo-yodrpvrx-ifq-cslo-ugna' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/nrlmc-ivkykitr-fosuw-kw-wdv-ffgzb-giknjp-klf-ygpy-xbn-pp-mf-tneahu-zwjma-hgcxj-veapomik-anqmwr-qr-fwlzupo-yodrpvrx-ifq-cslo-ugna' do
                                                                      text 'ae ywkhg kmvdd'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Sunday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'fpzpm xqa jdu ioxkt'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-01-26T16:04:52-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '82'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event', 'data-slug' => 'xb-xclaca-yqf-hkxwrl-atugsw-heg-yg-hblvsuu-ravuwj-yoqbwmnp-cxdyyxoa-knllcb-knqiv-subiq-xvek-zuhnk-hnymrvfo-gocn-ykjbhtz-ihs' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/xb-xclaca-yqf-hkxwrl-atugsw-heg-yg-hblvsuu-ravuwj-yoqbwmnp-cxdyyxoa-knllcb-knqiv-subiq-xvek-zuhnk-hnymrvfo-gocn-ykjbhtz-ihs' do
                                                                      text 'ef in sstmvplg gievcg drmwviqc'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Thursday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'mky kpxikt av and qzmhwu or cbyzo'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-01-30T01:10:04-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '5'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event', 'data-slug' => 'eg-erk-zaa-qgaew-bbt-fkcirlg-bskulsbq-ieryun-wozmben-cwdlrl-hq-kmvyqu-mtsinl-sw-rxnwelj-mfgxc-ecam' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/eg-erk-zaa-qgaew-bbt-fkcirlg-bskulsbq-ieryun-wozmben-cwdlrl-hq-kmvyqu-mtsinl-sw-rxnwelj-mfgxc-ecam' do
                                                                      text 'tdvkejp iukec dr qmeux irsgvyl omgu'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Tuesday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'jt aha'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-02-18T16:20:00-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '5'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event generator', 'data-slug' => 'amfvqkmo-rbddp-jxo-goprti-zo-vpduynh-cokyadf-lxikrtar-pzhswa-pxcyvvqa-jvkh-ccy-pchvqwds-dgcbcth-nbvmgl-hdue' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/amfvqkmo-rbddp-jxo-goprti-zo-vpduynh-cokyadf-lxikrtar-pzhswa-pxcyvvqa-jvkh-ccy-pchvqwds-dgcbcth-nbvmgl-hdue' do
                                                                      text 'mqszdess beg iug'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Saturday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'kclpf rtik ph qmf bomybf ykmqn tcpd'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-02-08T14:47:04-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '10'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event generator', 'data-slug' => 'fjhztq-kwjk-pamrhobi-rilyugx-vv-lpkz-aj-pqh-qmiip-oxvz-chj-qba-evnaihz-zffynoj-yfvnp' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/fjhztq-kwjk-pamrhobi-rilyugx-vv-lpkz-aj-pqh-qmiip-oxvz-chj-qba-evnaihz-zffynoj-yfvnp' do
                                                                      text 'xbq hewbw iuhyxeo if kwcgutsr bt wjfayhv'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Monday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'ui beb'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-02-03T12:55:20-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '65'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event', 'data-slug' => 'ryf-jlim-yahhkra-cd-qwxybn-jw' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/ryf-jlim-yahhkra-cd-qwxybn-jw' do
                                                                      text 'wqfogc iobxj dwpljodr'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Wednesday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'cxpmq uflzrcv txkiwddk jesq iyebwxg'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-01-22T03:08:35-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '79'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                                li :class => 'event', 'data-slug' => 'eisegka-fquu-uyfufhn-eihk-nb-mhib-tgsrs-hkft' do
                                                                  div :class => 'event_links' do
                                                                    a :href => '/n/events/eisegka-fquu-uyfufhn-eihk-nb-mhib-tgsrs-hkft' do
                                                                      text 'fua lst yg xfgmoyq jx jbbuyx fn'
                                                                    end
                                                                    span :class => 'hidden' do
                                                                      text 'Friday'
                                                                    end
                                                                  end
                                                                  div :class => 'event_info' do
                                                                    div :class => 'city' do
                                                                      span do
                                                                        text 'rlmmcen dav kpdfzyyp gczijsz'
                                                                      end
                                                                    end
                                                                    div :class => 'time' do
                                                                      span do
                                                                        time :datetime => '2014-02-14T12:21:08-08:00' do
                                                                        end
                                                                      end
                                                                    end
                                                                    div :class => 'attendees' do
                                                                      span do
                                                                        text '95'
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'big_groups_btn well see_all_events_big' do
                                                              a :class => 'span12 btn btn-primary', :href => '/n/places//n/places/san-francisco-california-united-states/events?place=/n/places/san-francisco-california-united-states' do
                                                                text 'See all'
                                                              end
                                                            end
                                                          end
                                                          div :class => 'well big_groups_btn' do
                                                            a :class => 'link_button button', :href => '/n/o/groups', :title => 'All Groups' do
                                                              text 'All Groups'
                                                            end
                                                          end
                                                          div :class => 'well people_container' do
                                                            h3 :class => 'holder_header' do
                                                              text 'Surfers Who Need a Host'
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=932276031&id=42J7LSRD', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/148503210/1392318230/C-30-30?default=true&sh=Hy9vnsUi8GXuw8ouOwvvsS);') do
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=932276031&id=42J7LSRD' do
                                                                      text 'Miriam Li'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'slhlm'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '43
, Female'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '40
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=923063964&id=3NYGS581', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/802413865/1391891642/C-30-30?default=true&sh=hrAY2Ff0BiXrTakF0LeHCM);') do
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=923063964&id=3NYGS581' do
                                                                      text 'Joe Johnson'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'qyn'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '37
, Male'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '25
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=24234539&id=QY9CNHHV', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/557031444/1391444191/C-30-30?default=true&sh=9cUk9vMo4bH4qE6GZkKds7);') do
                                                                    span :class => 'verified' do
                                                                      img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
                                                                    end
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=24234539&id=QY9CNHHV' do
                                                                      text 'Kate Miller'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'ltttnhhl'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '37
, Male'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '28
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=509554135&id=ZW0RMXRN', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/444646507/1391143903/C-30-30?default=true&sh=iLWYpLSPm0YaMArTbbxUpj);') do
                                                                    span :class => 'verified' do
                                                                      img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
                                                                    end
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=509554135&id=ZW0RMXRN' do
                                                                      text 'Hermione Johnson'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'jpbrsak'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '60
, Male'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '5
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=217646701&id=GNJRMCEQ', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/248353543/1392036585/C-30-30?default=true&sh=QNKSG0B77QtzWNFjg6DS0x);') do
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=217646701&id=GNJRMCEQ' do
                                                                      text 'Mary Hernandez'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'oms'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '64
, Female'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '8
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=737591534&id=NVFZAT7G', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/896778884/1390267791/C-30-30?default=true&sh=VpdVuoTsoS3PUPxgohZftK);') do
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=737591534&id=NVFZAT7G' do
                                                                      text 'Ben Miller'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'ja'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '56
, Male'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '50
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=617430122&id=X4JEPTXH', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/52563580/1391575436/C-30-30?default=true&sh=fvtWSyNS4uGq7as7v21qUJ);') do
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=617430122&id=X4JEPTXH' do
                                                                      text 'Ben Johnson'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'rjgwisy'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '61
, Male'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '10
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=432305587&id=6DOHE443', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/857566395/1391311270/C-30-30?default=true&sh=xrPeBBm9myA4C5H5rJdL1I);') do
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=432305587&id=6DOHE443' do
                                                                      text 'Joe Johnson'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'onxfqeq'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '26
, Female'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '38
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=637180519&id=40P7XCGJ', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/967789120/1391362060/C-30-30?default=true&sh=9EHl9254eottRqs2Q8dzVp);') do
                                                                    span :class => 'verified' do
                                                                      img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
                                                                    end
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=637180519&id=40P7XCGJ' do
                                                                      text 'Miriam Hernandez'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'brzdri'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '56
, Female'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '11
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'featured_person' do
                                                              div :class => 'media' do
                                                                a :class => 'pull-left square avatar', :href => '/profile.html?city_couchrequest=255997223&id=7HK93L5U', :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1' do
                                                                  span(:class => 'media-object avatar imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/819117547/1392531754/C-30-30?default=true&sh=z9wZVuJ2oqVPs80XtG7wS8);') do
                                                                    span :class => 'verified' do
                                                                      img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
                                                                    end
                                                                  end
                                                                end
                                                                div :class => 'media-body' do
                                                                  h4 do
                                                                    a :href => '/profile.html?city_couchrequest=255997223&id=7HK93L5U' do
                                                                      text 'Floyd Miller'
                                                                    end
                                                                  end
                                                                  p :class => 'city' do
                                                                    text 'nmerotil'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '39
, Male'
                                                                  end
                                                                  p :class => 'meta' do
                                                                    text '45
references'
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            div :class => 'big_cta_btn' do
                                                              a :class => 'link_button button', :force_login => 'true', :href => '/n/travelers/in/place//n/places/san-francisco-california-united-states', :id => 'autogen_id_for_tracking_place_ocrs_clicked_more_1', :title => 'Host A Surfer' do
                                                                text 'Host A Surfer'
                                                              end
                                                            end
                                                          end
                                                          div :class => 'well sub_groups', :id => 'sub_groups' do
                                                            div :class => 'hidden_mode', :id => 'sub_groups_list' do
                                                              div :class => 'holder_header' do
                                                                div :class => 'pull-left' do
                                                                  h3 do
                                                                    text 'Related Groups'
                                                                  end
                                                                end
                                                              end
                                                              div :class => 'media-body' do
                                                                ul do
                                                                  li 'data-sub-group-id' => '32440690', 'data-sub-group-position' => '0' do
                                                                    a :href => 'https://www.couchsurfing.org/n/o/group/32440690' do
                                                                      text 'irgah dn czfwowq squsj pks lht'
                                                                    end
                                                                  end
                                                                  li 'data-sub-group-id' => '872504769', 'data-sub-group-position' => '1' do
                                                                    a :href => 'https://www.couchsurfing.org/n/o/group/872504769' do
                                                                      text 'zcnc gza pq'
                                                                    end
                                                                  end
                                                                  li 'data-sub-group-id' => '269581130', 'data-sub-group-position' => '2' do
                                                                    a :href => 'https://www.couchsurfing.org/n/o/group/269581130' do
                                                                      text 'twiniqot zb keky mnxriv lyxu mnrf gbug'
                                                                    end
                                                                  end
                                                                  li 'data-sub-group-id' => '433739566', 'data-sub-group-position' => '3' do
                                                                    a :href => 'https://www.couchsurfing.org/n/o/group/433739566' do
                                                                      text 'mbdml ferccbwd vupllv'
                                                                    end
                                                                  end
                                                                  li 'data-sub-group-id' => '44967303', 'data-sub-group-position' => '4' do
                                                                    a :href => 'https://www.couchsurfing.org/n/o/group/44967303' do
                                                                      text 'iugriid iog pamhfgg ibdwbk zp aphtqxy wfa'
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                          div :class => 'well big_groups_btn' do
                                                            a :class => 'link_button button', :href => '/n/locals/in/place/13', :id => 'autogen_id_for_tracking_place_sidebar_meet_people_button_clicked_1', :title => 'Meet People' do
                                                              text 'Meet People'
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                    footer :id => 'main-footer' do
                                                      div :class => 'hidden-menu', :id => 'language_selector_container' do
                                                        div :class => 'menu', :id => 'language_selector_menu' do
                                                          div :class => 'language_selector_columns_container' do
                                                            div :class => 'column' do
                                                              a :class => 'language', 'data-locale' => 'de_DE' do
                                                                text 'Deutsch'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'es_ES' do
                                                                text 'Español'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'it_IT' do
                                                                text 'Italiano'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'ko_KR' do
                                                                text '한국어'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'pt_BR' do
                                                                text 'Português brasileiro'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'tr_TR' do
                                                                text 'Türkçe'
                                                              end
                                                            end
                                                            div :class => 'column' do
                                                              a :class => 'language', 'data-locale' => 'en_US' do
                                                                text 'English'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'fr_FR' do
                                                                text 'Français'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'ja_JP' do
                                                                text '日本語'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'pl_PL' do
                                                                text 'Polski'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'ru_RU' do
                                                                text 'Русский'
                                                              end
                                                              a :class => 'language', 'data-locale' => 'zh_CN' do
                                                                text '中文 (简化字)'
                                                              end
                                                            end
                                                          end
                                                          a :class => 'menu-close', :href => '#brand' do
                                                            text 'close'
                                                          end
                                                        end
                                                        a :class => 'trigger', :href => '#language_selector_menu', :id => 'language_selector_button' do
                                                          text 'English'
                                                        end
                                                      end
                                                      nav :class => 'social_container' do
                                                        div :class => 'call-to-action' do
                                                          text 'Connect with us:'
                                                        end
                                                        ul :class => 'social' do
                                                          li do
                                                            a :class => 'icon_button button twitter', :href => 'http://twitter.com/couchsurfing', :target => '_blank', :title => 'Twitter' do
                                                              text 'Twitter'
                                                            end
                                                          end
                                                          li do
                                                            a :class => 'icon_button button facebook', :href => 'http://facebook.com/couchsurfing', :target => '_blank', :title => 'Facebook' do
                                                              text 'Facebook'
                                                            end
                                                          end
                                                          li do
                                                            a :class => 'icon_button button google', :href => 'https://plus.google.com/102186173500819286170', :target => '_blank', :title => 'Google' do
                                                              text 'Google'
                                                            end
                                                          end
                                                          li do
                                                            a :class => 'icon_button button youtube', :href => 'http://www.youtube.com/user/thisiscouchsurfing', :target => '_blank', :title => 'YouTube' do
                                                              text 'YouTube'
                                                            end
                                                          end
                                                          li do
                                                            a :class => 'icon_button button tumblr', :href => 'http://couchsurfing.tumblr.com/', :target => '_blank', :title => 'Tumblr' do
                                                              text 'Tumblr'
                                                            end
                                                          end
                                                          li do
                                                            a :class => 'icon_button button instagram', :href => 'http://instagram.com/couchsurfing', :target => '_blank', :title => 'Instagram' do
                                                              text 'Instagram'
                                                            end
                                                          end
                                                        end
                                                      end
                                                      nav :class => 'site_map' do
                                                        div :class => 'about' do
                                                          div :class => 'heading' do
                                                            text 'About'
                                                          end
                                                          ul :class => 'links' do
                                                            li do
                                                              a :href => '/n/about' do
                                                                text 'About Us'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/team' do
                                                                text 'Team'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/jobs' do
                                                                text 'Jobs'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/press' do
                                                                text 'Press'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/news' do
                                                                text 'Blog'
                                                              end
                                                            end
                                                          end
                                                        end
                                                        div :class => 'gettingstarted' do
                                                          div :class => 'heading' do
                                                            text 'Getting Started'
                                                          end
                                                          ul :class => 'links' do
                                                            li do
                                                              a :href => '/n/how-it-works' do
                                                                text 'How It Works'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/mobile' do
                                                                text 'Mobile'
                                                              end
                                                            end
                                                          end
                                                        end
                                                        div :class => 'safety' do
                                                          div :class => 'heading' do
                                                            text 'Safety'
                                                          end
                                                          ul :class => 'links' do
                                                            li do
                                                              a :href => '/n/safety' do
                                                                text 'Basics'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/safety_tips' do
                                                                text 'Tips'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/safety_faq' do
                                                                text 'FAQ'
                                                              end
                                                            end
                                                          end
                                                        end
                                                        div :class => 'community' do
                                                          div :class => 'heading' do
                                                            text 'Community'
                                                          end
                                                          ul :class => 'links' do
                                                            li do
                                                              a :href => '/n/values' do
                                                                text 'Our Values'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/ambassadors' do
                                                                text 'Ambassador Program'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/stories' do
                                                                text 'Stories'
                                                              end
                                                            end
                                                          end
                                                        end
                                                        div :class => 'support' do
                                                          div :class => 'heading' do
                                                            text 'Support'
                                                          end
                                                          ul :class => 'links' do
                                                            li do
                                                              a :href => '/n/help' do
                                                                text 'Help'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/terms' do
                                                                text 'Terms of Use'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/privacy' do
                                                                text 'Privacy Policy'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/guidelines' do
                                                                text 'Community Guidelines'
                                                              end
                                                            end
                                                            li do
                                                              a :href => '/n/trademark' do
                                                                text 'Trademark Policy'
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                      div :class => 'copyright' do
                                                        text '(c) 1999 - 2014    Couchsurfing International, Inc. A socially responsible, Certified B Corporation'
                                                      end
                                                    end
                                                    div :id => 'hidden-content' do
                                                      div :class => 'modal_window hide fade event_modal_container new_event_form', 'data-backdrop' => 'static', 'data-keyboard' => 'false', :id => 'event_form_modal', :title => 'i18n_events_add_new' do
                                                        header :class => 'modal_header' do
                                                          h3 :class => 'modal_title clearfix' do
                                                            span :class => 'title_text' do
                                                              text 'i18n_events_add_new'
                                                            end
                                                            a :class => 'modal_close', 'data-dismiss' => 'modal', :href => '#' do
                                                              text 'Cancel'
                                                            end
                                                          end
                                                        end
                                                        div :class => 'modal_body' do
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
                                                                        text 'We found:'
                                                                      end
                                                                      span do
                                                                      end
                                                                      label :class => 'note' do
                                                                        text 'To specify an exact location, click and drag the marker on the map'
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
                                                                                text 'Public Event'
                                                                              end
                                                                              input :class => 'invite_only', :name => 'private', :type => 'radio', :value => '1'
                                                                                span :class => 'private_selected' do
                                                                                  text 'Invite Only Event'
                                                                                end
                                                                                div :class => 'allow_guest_invite' do
                                                                                  input :id => 'allow_guest_invite', :name => 'allow_guest_invite', :type => 'checkbox', :value => '1'
                                                                                    label :for => 'allow_guest_invite' do
                                                                                      text 'Allow guests to invite others'
                                                                                    end
                                                                                  end
                                                                                end
                                                                                fieldset :class => 'modal_page', 'data-modal_title' => 'Add Time & Date' do
                                                                                  div :class => 'timeselector' do
                                                                                    label :for => 'start_day' do
                                                                                      text 'Starts on:'
                                                                                    end
                                                                                    input :id => 'start_day', :name => 'start_day', :type => 'hidden'
                                                                                      input :class => 'start_day_picker', :type => 'text'
                                                                                      end
                                                                                      div :class => 'hour_selector' do
                                                                                        div :id => 'time_error' do
                                                                                        end
                                                                                        label :for => 'start_hour_select' do
                                                                                          text 'From:'
                                                                                        end
                                                                                        select :class => 'start_hour', :id => 'start_hour_select', :name => 'start_hour' do
                                                                                          option :value => '0.0' do
                                                                                            text '12:00 AM'
                                                                                          end
                                                                                          option :value => '1800.0' do
                                                                                            text '12:30 AM'
                                                                                          end
                                                                                          option :value => '3600.0' do
                                                                                            text '1:00 AM'
                                                                                          end
                                                                                          option :value => '5400.0' do
                                                                                            text '1:30 AM'
                                                                                          end
                                                                                          option :value => '7200.0' do
                                                                                            text '2:00 AM'
                                                                                          end
                                                                                          option :value => '9000.0' do
                                                                                            text '2:30 AM'
                                                                                          end
                                                                                          option :value => '10800.0' do
                                                                                            text '3:00 AM'
                                                                                          end
                                                                                          option :value => '12600.0' do
                                                                                            text '3:30 AM'
                                                                                          end
                                                                                          option :value => '14400.0' do
                                                                                            text '4:00 AM'
                                                                                          end
                                                                                          option :value => '16200.0' do
                                                                                            text '4:30 AM'
                                                                                          end
                                                                                          option :value => '18000.0' do
                                                                                            text '5:00 AM'
                                                                                          end
                                                                                          option :value => '19800.0' do
                                                                                            text '5:30 AM'
                                                                                          end
                                                                                          option :value => '21600.0' do
                                                                                            text '6:00 AM'
                                                                                          end
                                                                                          option :value => '23400.0' do
                                                                                            text '6:30 AM'
                                                                                          end
                                                                                          option :value => '25200.0' do
                                                                                            text '7:00 AM'
                                                                                          end
                                                                                          option :value => '27000.0' do
                                                                                            text '7:30 AM'
                                                                                          end
                                                                                          option :value => '28800.0' do
                                                                                            text '8:00 AM'
                                                                                          end
                                                                                          option :value => '30600.0' do
                                                                                            text '8:30 AM'
                                                                                          end
                                                                                          option :value => '32400.0' do
                                                                                            text '9:00 AM'
                                                                                          end
                                                                                          option :value => '34200.0' do
                                                                                            text '9:30 AM'
                                                                                          end
                                                                                          option :value => '36000.0' do
                                                                                            text '10:00 AM'
                                                                                          end
                                                                                          option :value => '37800.0' do
                                                                                            text '10:30 AM'
                                                                                          end
                                                                                          option :value => '39600.0' do
                                                                                            text '11:00 AM'
                                                                                          end
                                                                                          option :value => '41400.0' do
                                                                                            text '11:30 AM'
                                                                                          end
                                                                                          option :value => '43200.0' do
                                                                                            text '12:00 PM'
                                                                                          end
                                                                                          option :value => '45000.0' do
                                                                                            text '12:30 PM'
                                                                                          end
                                                                                          option :value => '46800.0' do
                                                                                            text '1:00 PM'
                                                                                          end
                                                                                          option :value => '48600.0' do
                                                                                            text '1:30 PM'
                                                                                          end
                                                                                          option :value => '50400.0' do
                                                                                            text '2:00 PM'
                                                                                          end
                                                                                          option :value => '52200.0' do
                                                                                            text '2:30 PM'
                                                                                          end
                                                                                          option :value => '54000.0' do
                                                                                            text '3:00 PM'
                                                                                          end
                                                                                          option :value => '55800.0' do
                                                                                            text '3:30 PM'
                                                                                          end
                                                                                          option :value => '57600.0' do
                                                                                            text '4:00 PM'
                                                                                          end
                                                                                          option :value => '59400.0' do
                                                                                            text '4:30 PM'
                                                                                          end
                                                                                          option :value => '61200.0' do
                                                                                            text '5:00 PM'
                                                                                          end
                                                                                          option :value => '63000.0' do
                                                                                            text '5:30 PM'
                                                                                          end
                                                                                          option :value => '64800.0' do
                                                                                            text '6:00 PM'
                                                                                          end
                                                                                          option :value => '66600.0' do
                                                                                            text '6:30 PM'
                                                                                          end
                                                                                          option :value => '68400.0' do
                                                                                            text '7:00 PM'
                                                                                          end
                                                                                          option :value => '70200.0' do
                                                                                            text '7:30 PM'
                                                                                          end
                                                                                          option :value => '72000.0' do
                                                                                            text '8:00 PM'
                                                                                          end
                                                                                          option :value => '73800.0' do
                                                                                            text '8:30 PM'
                                                                                          end
                                                                                          option :value => '75600.0' do
                                                                                            text '9:00 PM'
                                                                                          end
                                                                                          option :value => '77400.0' do
                                                                                            text '9:30 PM'
                                                                                          end
                                                                                          option :value => '79200.0' do
                                                                                            text '10:00 PM'
                                                                                          end
                                                                                          option :value => '81000.0' do
                                                                                            text '10:30 PM'
                                                                                          end
                                                                                          option :value => '82800.0' do
                                                                                            text '11:00 PM'
                                                                                          end
                                                                                          option :value => '84600.0' do
                                                                                            text '11:30 PM'
                                                                                          end
                                                                                        end
                                                                                        label :class => 'label_end_hour', :for => 'end_hour_select' do
                                                                                          text 'to'
                                                                                        end
                                                                                        select :class => 'end_hour', :id => 'end_hour_select', :name => 'end_hour' do
                                                                                          option :value => '0.0' do
                                                                                            text '12:00 AM'
                                                                                          end
                                                                                          option :value => '1800.0' do
                                                                                            text '12:30 AM'
                                                                                          end
                                                                                          option :value => '3600.0' do
                                                                                            text '1:00 AM'
                                                                                          end
                                                                                          option :value => '5400.0' do
                                                                                            text '1:30 AM'
                                                                                          end
                                                                                          option :value => '7200.0' do
                                                                                            text '2:00 AM'
                                                                                          end
                                                                                          option :value => '9000.0' do
                                                                                            text '2:30 AM'
                                                                                          end
                                                                                          option :value => '10800.0' do
                                                                                            text '3:00 AM'
                                                                                          end
                                                                                          option :value => '12600.0' do
                                                                                            text '3:30 AM'
                                                                                          end
                                                                                          option :value => '14400.0' do
                                                                                            text '4:00 AM'
                                                                                          end
                                                                                          option :value => '16200.0' do
                                                                                            text '4:30 AM'
                                                                                          end
                                                                                          option :value => '18000.0' do
                                                                                            text '5:00 AM'
                                                                                          end
                                                                                          option :value => '19800.0' do
                                                                                            text '5:30 AM'
                                                                                          end
                                                                                          option :value => '21600.0' do
                                                                                            text '6:00 AM'
                                                                                          end
                                                                                          option :value => '23400.0' do
                                                                                            text '6:30 AM'
                                                                                          end
                                                                                          option :value => '25200.0' do
                                                                                            text '7:00 AM'
                                                                                          end
                                                                                          option :value => '27000.0' do
                                                                                            text '7:30 AM'
                                                                                          end
                                                                                          option :value => '28800.0' do
                                                                                            text '8:00 AM'
                                                                                          end
                                                                                          option :value => '30600.0' do
                                                                                            text '8:30 AM'
                                                                                          end
                                                                                          option :value => '32400.0' do
                                                                                            text '9:00 AM'
                                                                                          end
                                                                                          option :value => '34200.0' do
                                                                                            text '9:30 AM'
                                                                                          end
                                                                                          option :value => '36000.0' do
                                                                                            text '10:00 AM'
                                                                                          end
                                                                                          option :value => '37800.0' do
                                                                                            text '10:30 AM'
                                                                                          end
                                                                                          option :value => '39600.0' do
                                                                                            text '11:00 AM'
                                                                                          end
                                                                                          option :value => '41400.0' do
                                                                                            text '11:30 AM'
                                                                                          end
                                                                                          option :value => '43200.0' do
                                                                                            text '12:00 PM'
                                                                                          end
                                                                                          option :value => '45000.0' do
                                                                                            text '12:30 PM'
                                                                                          end
                                                                                          option :value => '46800.0' do
                                                                                            text '1:00 PM'
                                                                                          end
                                                                                          option :value => '48600.0' do
                                                                                            text '1:30 PM'
                                                                                          end
                                                                                          option :value => '50400.0' do
                                                                                            text '2:00 PM'
                                                                                          end
                                                                                          option :value => '52200.0' do
                                                                                            text '2:30 PM'
                                                                                          end
                                                                                          option :value => '54000.0' do
                                                                                            text '3:00 PM'
                                                                                          end
                                                                                          option :value => '55800.0' do
                                                                                            text '3:30 PM'
                                                                                          end
                                                                                          option :value => '57600.0' do
                                                                                            text '4:00 PM'
                                                                                          end
                                                                                          option :value => '59400.0' do
                                                                                            text '4:30 PM'
                                                                                          end
                                                                                          option :value => '61200.0' do
                                                                                            text '5:00 PM'
                                                                                          end
                                                                                          option :value => '63000.0' do
                                                                                            text '5:30 PM'
                                                                                          end
                                                                                          option :value => '64800.0' do
                                                                                            text '6:00 PM'
                                                                                          end
                                                                                          option :value => '66600.0' do
                                                                                            text '6:30 PM'
                                                                                          end
                                                                                          option :value => '68400.0' do
                                                                                            text '7:00 PM'
                                                                                          end
                                                                                          option :value => '70200.0' do
                                                                                            text '7:30 PM'
                                                                                          end
                                                                                          option :value => '72000.0' do
                                                                                            text '8:00 PM'
                                                                                          end
                                                                                          option :value => '73800.0' do
                                                                                            text '8:30 PM'
                                                                                          end
                                                                                          option :value => '75600.0' do
                                                                                            text '9:00 PM'
                                                                                          end
                                                                                          option :value => '77400.0' do
                                                                                            text '9:30 PM'
                                                                                          end
                                                                                          option :value => '79200.0' do
                                                                                            text '10:00 PM'
                                                                                          end
                                                                                          option :value => '81000.0' do
                                                                                            text '10:30 PM'
                                                                                          end
                                                                                          option :value => '82800.0' do
                                                                                            text '11:00 PM'
                                                                                          end
                                                                                          option :value => '84600.0' do
                                                                                            text '11:30 PM'
                                                                                          end
                                                                                        end
                                                                                        span :class => 'ends_next_day hide' do
                                                                                          text 'the next day'
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
                                                                                              text 'Remove'
                                                                                            end
                                                                                          end
                                                                                          div :class => 'btn add_photo_btn event_photo_btn' do
                                                                                            span :class => 'event_photo_btn_text' do
                                                                                              text 'Add Photo'
                                                                                            end
                                                                                            input :class => 'file', :name => 'images[]', :type => 'file'
                                                                                              input :class => 'remove_photo', :name => 'remove_photo', :type => 'hidden'
                                                                                              end
                                                                                              div :class => 'aspect_ratio' do
                                                                                              end
                                                                                            end
                                                                                            textarea :class => 'description', :name => 'description', :placeholder => 'Optional description : any cost or purchase, directions, etc.' do
                                                                                            end
                                                                                          end
                                                                                          div :class => 'max_guests_container' do
                                                                                            input :class => 'guest_limit', :id => 'max_guests_enabled', :name => 'max_guests_enabled', :type => 'checkbox'
                                                                                              label :class => 'max_guests_label', :for => 'max_guests_enabled' do
                                                                                                text 'Limit number of guests'
                                                                                              end
                                                                                              input :class => 'hide max_guests maximum_guests_allowed', :maxlength => '4', :name => 'maximum_guests_allowed', :type => 'text'
                                                                                              end
                                                                                              div :class => 'organizers_container' do
                                                                                                div :class => 'row_label' do
                                                                                                  input :class => 'enable_multi_organizer', :id => 'enable_multi_organizer', :type => 'checkbox'
                                                                                                    label :for => 'enable_multi_organizer' do
                                                                                                      text 'Invite an additional organizer'
                                                                                                    end
                                                                                                  end
                                                                                                  div :class => 'add_organizers' do
                                                                                                    h3 do
                                                                                                      text 'Invite another organizer to this event.'
                                                                                                    end
                                                                                                    p do
                                                                                                      text 'Note: All organizers will have the same privileges that you have.'
                                                                                                    end
                                                                                                    div :class => 'search_organizers' do
                                                                                                      input :class => 'search_string', :name => 'search_string', :placeholder => 'Search by name or username', :type => 'text'
                                                                                                        a :class => 'primary_action_button button submit_search disabled_until_load', :href => '#', :id => 'search_for_organizers_button', :title => 'Search' do
                                                                                                          text 'Search'
                                                                                                        end
                                                                                                        script do
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
                                                                                                        text 'Organizers'
                                                                                                      end
                                                                                                      div :class => 'selected_organizers clearfix' do
                                                                                                        div :class => 'selectable_user_container', 'data-id' => '540371464' do
                                                                                                          div :class => 'input_container' do
                                                                                                            input :checked => 'checked', :id => 'selected_organizers_ids_540371464', :name => 'selected_organizers_ids[]', :type => 'checkbox', :value => '540371464'
                                                                                                            end
                                                                                                            span(:class => 'pull-left avatar sm_circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/274549413/1391113032/C-30-30?default=true&sh=RxjDs0X6H6TU1sGd5vYKZl);') do
                                                                                                            end
                                                                                                            div :class => 'meta_container' do
                                                                                                              label :for => 'selected_organizers_ids_540371464' do
                                                                                                                p :class => 'username' do
                                                                                                                  text 'Joe Smith'
                                                                                                                end
                                                                                                              end
                                                                                                              p :class => 'location' do
                                                                                                                text 'San Francisco'
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                              footer :class => 'modal_footer' do
                                                                                                div :class => 'ajax_loading_container' do
                                                                                                end
                                                                                                a :class => 'action_button button prev_page disabled_until_load', :href => '#', :id => '73cf55f0f71f06a51d5ff1b5a66ca1cf8201ffc5', :title => 'Back' do
                                                                                                  text 'Back'
                                                                                                end
                                                                                                script do
                                                                                                  text '//'
                                                                                                  rawtext '<![CDATA[
    (function () {
      var button = $("#73cf55f0f71f06a51d5ff1b5a66ca1cf8201ffc5");
      button.on("click", function (e) { e.preventDefault(); });
      $.subscribe("jsload", function () {
        button.removeClass("disabled_until_load");
      });
    })();
  // ]]>'
                                                                                                end
                                                                                                a :class => 'primary_action_button button submit_btn new_submit_btn disabled_until_load', :href => '#', :id => '7f1998f6b3b3f70801ebb84a23493e5b900fdf37', :title => 'Save Event' do
                                                                                                  text 'Save Event'
                                                                                                end
                                                                                                script do
                                                                                                  text '//'
                                                                                                  rawtext '<![CDATA[
    (function () {
      var button = $("#7f1998f6b3b3f70801ebb84a23493e5b900fdf37");
      button.on("click", function (e) { e.preventDefault(); });
      $.subscribe("jsload", function () {
        button.removeClass("disabled_until_load");
      });
    })();
  // ]]>'
                                                                                                end
                                                                                                a :class => 'primary_action_button button next_page disabled_until_load', :href => '#', :id => 'a61726a26c5837d2081a322e322d6bbeeef98142', :title => 'Next' do
                                                                                                  text 'Next'
                                                                                                end
                                                                                                script do
                                                                                                  text '//'
                                                                                                  rawtext '<![CDATA[
    (function () {
      var button = $("#a61726a26c5837d2081a322e322d6bbeeef98142");
      button.on("click", function (e) { e.preventDefault(); });
      $.subscribe("jsload", function () {
        button.removeClass("disabled_until_load");
      });
    })();
  // ]]>'
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                            div :class => 'modal_window hide fade other_events_modal past_events_modal', :id => 'past_events_modal', :title => 'Past Events' do
                                                                                              header :class => 'modal_header' do
                                                                                                h3 :class => 'modal_title clearfix' do
                                                                                                  span :class => 'title_text' do
                                                                                                    text 'Past Events'
                                                                                                  end
                                                                                                  a :class => 'modal_close', 'data-dismiss' => 'modal', :href => '#' do
                                                                                                    text 'Cancel'
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                              div :class => 'modal_body' do
                                                                                                img :class => 'ajax_loading', :src => '/assets/loading_loop.gif'
                                                                                              end
                                                                                              footer :class => 'modal_footer' do
                                                                                              end
                                                                                            end
                                                                                            div :class => 'modal_window hide fade', :id => 'alert_modal' do
                                                                                              header :class => 'modal_header' do
                                                                                                a :class => 'modal_close', 'data-dismiss' => 'modal', :href => '#' do
                                                                                                  text 'Cancel'
                                                                                                end
                                                                                              end
                                                                                              div :class => 'modal_body' do
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                          div :id => 'preloaded_ajax_loading_container' do
                                                                                            div :class => 'ajax_loading_loop' do
                                                                                            end
                                                                                            a :class => 'action_button button loading', :href => '#' do
                                                                                            end
                                                                                          end
                                                                                          script do
                                                                                            text 'if(typeof CSDataTransfer===\'undefined\'){ CSDataTransfer = {}; } CSDataTransfer._place = {"id":26380,"path":"/n/places/san-francisco-california-united-states"};'
                                                                                          end
                                                                                          script do
                                                                                            text 'if(typeof CSDataTransfer===\'undefined\'){ CSDataTransfer = {}; } CSDataTransfer._currentUser = {"loggedIn":true,"siteLocale":"en_US","defaultMainImage":"https://d20rrv4k3o7n66.cloudfront.net/n/image/serve/P/3/C-60-60?sh=aSWzKD3rV9tx7Sgcls-NJQ","uncompletedTasksTotal":0,"id":540371464,"mainImage":"https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/274549413/1391113032/C-30-30?default=true&sh=RxjDs0X6H6TU1sGd5vYKZl","homePlace":{"id":540371464,"bounds":{"north":38.134705869495,"south":37.397699228207,"east":-121.966992743653,"west":-123.028393432128}},"livePlaceSlug":"san-francisco-california-united-states","identityVerified":false,"html5Position":{"coords":{"latitude":37.8157899,"longitude":-122.2442352},"place":{"id":26380,"path":"/n/places/san-francisco-california-united-states"},"timestamp":1389477469107},"slug":"JOESMITH","html5GeolocationPermission":"yes","html5Position":{"coords":{"latitude":37.8157899,"longitude":-122.2442352},"place":{"id":26380,"path":"/n/places/san-francisco-california-united-states"},"timestamp":1389477469107}};'
                                                                                          end
                                                                                          script :src => 'https://d20rrv4k3o7n66.cloudfront.net/assets/old_site-ad61f0931eedf7dae3548eea9ab2715c.js', :type => 'text/javascript' do
                                                                                          end
                                                                                          script do
                                                                                            text '//'
                                                                                            rawtext <<-EOS
<![CDATA[
  $(document).ready(function() {
    CS.Tracking.addGlobalTrackingProperties({"distinct_id":"cstrk:user-v1:540371464","referring_page":"dashboard#index","current_page":"places#show","unique_browser_id":"5202000A8DABBF50852D3C0402F91B03","unique_browser_id_source":"uid_got","user_verification_status":"not_verified","user_couch_status":"no","user_has_profile_photo":true,"user_facebook_connected":true,"user_age":44,"user_sex":"male","user_live_location_full":"San Francisco, California, United States","user_live_city":"San Francisco","user_live_state":"California","user_live_country":"United States","user_live_latitude":"37.7749295","user_live_longitude":"-122.4194155","user_joined_date":"2011-09-13T15:01:56Z"});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_logo_clicked_1", "nav_logo_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_profile_clicked_1", "nav_profile_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_account_settings_clicked_1", "nav_account_settings_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_place_page_clicked_1", "nav_place_page_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_log_out_clicked_1", "nav_log_out_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_couchrequests_clicked_1", "nav_couchrequests_clicked", {"unread_couchrequest_count":0});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_messages_clicked_1", "nav_messages_clicked", {"unread_message_count":24});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_home_clicked_1", "nav_home_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_trips_clicked_1", "nav_trips_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_host_clicked_1", "nav_host_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_events_clicked_1", "nav_events_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_groups_clicked_1", "nav_groups_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_help_clicked_1", "nav_help_clicked", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_1", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"verified","clicked_user_couch_status":"no","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":true,"clicked_user_age":35,"clicked_user_sex":"male","clicked_user_live_location_full":"Sao Paulo, S\u00e3o Paulo, Brazil","clicked_user_live_city":"Sao Paulo","clicked_user_live_state":"S\u00e3o Paulo","clicked_user_live_country":"Brazil","clicked_user_live_latitude":"-23.5489433","clicked_user_live_longitude":"-46.6388182","clicked_user_joined_date":"2006-11-25T05:57:52Z","display_sequence":1,"target":"link"});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_2", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"no","clicked_user_facebook_connected":false,"clicked_user_age":37,"clicked_user_sex":"female","clicked_user_live_location_full":"Marseille, Provence-Alpes-C\u00f4te d'Azur, France","clicked_user_live_city":"Marseille","clicked_user_live_state":"Provence-Alpes-C\u00f4te d'Azur","clicked_user_live_country":"France","clicked_user_live_latitude":"43.296482","clicked_user_live_longitude":"5.36978","clicked_user_joined_date":"2013-07-02T16:52:52Z","display_sequence":2,"target":"link"});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_3", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"maybe","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":true,"clicked_user_age":20,"clicked_user_sex":"female","clicked_user_live_location_full":"Gold Coast, Queensland, Australia","clicked_user_live_city":"Gold Coast","clicked_user_live_state":"Queensland","clicked_user_live_country":"Australia","clicked_user_live_latitude":"-28.0172605","clicked_user_live_longitude":"153.4256987","clicked_user_joined_date":"2012-10-03T13:56:56Z","display_sequence":3,"target":"link"});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_4", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"yes","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":true,"clicked_user_age":21,"clicked_user_sex":"male","clicked_user_live_location_full":"Gravata\u00ed, Rio Grande do Sul, Brazil","clicked_user_live_city":"Gravata\u00ed","clicked_user_live_state":"Rio Grande do Sul","clicked_user_live_country":"Brazil","clicked_user_live_latitude":"-29.9357237","clicked_user_live_longitude":"-51.0165907","clicked_user_joined_date":"2012-10-18T15:05:40Z","display_sequence":4,"target":"link"});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_5", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"verified","clicked_user_couch_status":"maybe","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":false,"clicked_user_age":58,"clicked_user_sex":"several_people","clicked_user_live_location_full":"Holstebro, Central Denmark Region, Denmark","clicked_user_live_city":"Holstebro","clicked_user_live_state":"Central Denmark Region","clicked_user_live_country":"Denmark","clicked_user_live_latitude":"56.361534","clicked_user_live_longitude":"8.621727","clicked_user_joined_date":"2010-06-06T16:36:21Z","display_sequence":5,"target":"link"});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_6", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"maybe","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":false,"clicked_user_age":24,"clicked_user_sex":"male","clicked_user_live_location_full":"Birmingham, England, United Kingdom","clicked_user_live_city":"Birmingham","clicked_user_live_state":"England","clicked_user_live_country":"United Kingdom","clicked_user_live_latitude":"52.486243","clicked_user_live_longitude":"-1.890401","clicked_user_joined_date":"2013-05-15T20:27:12Z","display_sequence":6,"target":"link"});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_more_1", "place_ocrs_clicked_more", {});
  CS.Tracking.trackClicks("#autogen_id_for_tracking_place_sidebar_meet_people_button_clicked_1", "place_sidebar_meet_people_button_clicked", {});
  });

          $(function () {
            $('input[placeholder], textarea[placeholder]').placeholder();
          });

  // ]]>
EOS
                                                                                          end
                                                                                          script do
                                                                                            text 'if (!NREUMQ.f) { NREUMQ.f=function() {
  NREUMQ.push(["load",new Date().getTime()]);
  var e=document.createElement("script");
  e.type="text/javascript";
  e.src=(("http:"===document.location.protocol)?"http:":"https:") + "//" +
    "js-agent.newrelic.com/nr-100.js";
  document.body.appendChild(e);
  if(NREUMQ.a)NREUMQ.a();
  };
  NREUMQ.a=window.onload;window.onload=NREUMQ.f;
  };
  NREUMQ.push(["nrfj","beacon-6.newrelic.com","062bd2eae9","1081567","d1lWQRdaWlVdFxdJWVVVXUZKRl5WTw==",0,1637,new Date().getTime(),"","","","",""]);'
                                                                                          end
                                                                                          script do
                                                                                            text 'if (!NREUMQ.f) { NREUMQ.f=function() {
  NREUMQ.push(["load",new Date().getTime()]);
  var e=document.createElement("script");
  e.type="text/javascript";
  e.src=(("http:"===document.location.protocol)?"http:":"https:") + "//" +
    "js-agent.newrelic.com/nr-100.js";
  document.body.appendChild(e);
  if(NREUMQ.a)NREUMQ.a();
  };
  NREUMQ.a=window.onload;window.onload=NREUMQ.f;
  };
  NREUMQ.push(["nrfj","beacon-6.newrelic.com","062bd2eae9","1081567","d1lWQRdaWlVdFxdJWVVVXUZKRl5WTw==",0,1645,new Date().getTime(),"","","","",""]);'
                                                                                          end
                                                                                        end
                                                                                      end
  end
end
end
