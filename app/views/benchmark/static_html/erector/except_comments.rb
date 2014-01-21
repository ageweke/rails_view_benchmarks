class Views::Benchmark::StaticHtml::Erector::ExceptComments < Erector::Widget
  def content
    div :class => 'row-fluid' do
      div :class => 'span8' do
        div :class => 'row-fluid' do
          h3 :class => 'featured_event_title' do
            text 'Featured Events'
          end
          div :class => 'event_list' do
            div :class => 'event_in_list event_row_339571390', 'data-event_id' => '339571390', 'data-start_date' => '2014-01-26', :id => 'some-event-string-for-something-580858' do
              div :class => 'event_start_time' do
                h2 :class => 'event_day' do
                  text 'January 26'
                end
                div :class => 'date_time' do
                  text 'Sunday'
                  br do
                    text '12:00 AM'
                  end
                end
                div :class => 'event_image' do
                  a :class => 'event_in_list_link', :href => '/n/events/some-event-string-for-something-580858' do
                    img :src => 'https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/684150870/1390967721/C-30-30?default=true&sh=2yjx1K8flwrH1vMXjqPy5P'
                  end
                end
                div :class => 'event_details' do
                  div :class => 'event_details_text' do
                    a :class => 'event_in_list_link title', :href => '/n/events/some-event-string-for-something-580858', :title => 'This is some featured event!' do
                      text 'This is some featured event!'
                    end
                    div :class => 'city' do
                      span do
                        text 'And this is where that event happens'
                      end
                    end
                    div :class => 'attendees', 'data-count' => '25' do
                      span :class => 'attendee_count' do
                        text '25'
                      end
                      span do
                        text 'Attending'
                      end
                    end
                  end
                  div :class => 'event_buttons_container', 'data-event_slug' => 'some-event-string-for-something-580858' do
                    div :class => 'event_buttons' do
                      a :class => 'action_button button event_list_button leave_event hide disabled_until_load', :href => '#', :id => '935E0A87637E5364DDE8BF', :title => 'Leave' do
                        text 'Leave'
                      end
                      script do
                        text '//'
                        rawtext '<![CDATA[
    (function () {
      var button = $("#935E0A87637E5364DDE8BF");
      button.on("click", function (e) { e.preventDefault(); });
      $.subscribe("jsload", function () {
        button.removeClass("disabled_until_load");
      });
    })();
  // ]]>'
                      end
                      a :class => 'primary_action_button button event_list_button join_event disabled_until_load', :href => '#', :id => '935E0A87637E5364DDE8BF', :title => 'Join' do
                        text 'Join'
                      end
                      script do
                        text '//'
                        rawtext '<![CDATA[
    (function () {
      var button = $("#935E0A87637E5364DDE8BF");
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
                    li :class => 'event_user_list_item user_item', 'data-id' => '671919583' do
                      a :class => 'user_image', :href => '/n/people//n/people/6u3qy_tOWIDS2P.6', :title => 'Scott Li' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/305513863/1392305345/C-30-30?default=true&sh=DtHcJDefMj47YECsoIriiB);') do
                          span :class => 'avatar_badge organizer-icon' do
                          end
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '361533663' do
                      a :class => 'user_image', :href => '/n/people//n/people/t1gJludx9fh', :title => 'Hermione Li' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/104128305/1392068566/C-30-30?default=true&sh=qQ9865J8uPsAgcVZXWk4tq);') do
                          span :class => 'avatar_badge organizer-icon' do
                          end
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '681582573' do
                      a :class => 'user_image', :href => '/n/people//n/people/OoO0G7g_F6ADM.F', :title => 'Mary Johnson' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/82854722/1390400701/C-30-30?default=true&sh=4Givz8yV0aIPqRbeE2y2Ip);') do
                          span :class => 'avatar_badge organizer-icon' do
                          end
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '550138563' do
                      a :class => 'user_image', :href => '/n/people//n/people/vakpw32Wv5PG5nbq', :title => 'Scott Johnson' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/185846005/1392198918/C-30-30?default=true&sh=lRyKsqFQQuZIZ3UGKNaL3e);') do
                          span :class => 'avatar_badge organizer-icon' do
                          end
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '104144214' do
                      a :class => 'user_image', :href => '/n/people//n/people/6Wm5do2', :title => 'Hermione Miller' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/80774584/1390666427/C-30-30?default=true&sh=hW1AdObK1WEBl2k05fkXs9);') do
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '599414805' do
                      a :class => 'user_image', :href => '/n/people//n/people/vcpR5kQZ2jnBJ0', :title => 'Hermione Li' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/292276552/1391665427/C-30-30?default=true&sh=7XHupLhQW5oKGYoiorBb8f);') do
                          span :class => 'verified' do
                            img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
                          end
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '909686721' do
                      a :class => 'user_image', :href => '/n/people//n/people/ZP84v7Upoly_G', :title => 'Scott Hernandez' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/101025715/1390723256/C-30-30?default=true&sh=KstA1rg0yGmTQI3VJvFEge);') do
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '120953767' do
                      a :class => 'user_image', :href => '/n/people//n/people/6_Q9EP9yn6b9nyLD', :title => 'Hermione Li' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/818876856/1392362087/C-30-30?default=true&sh=AFvVZIJyBxjcB7E8zyjCfL);') do
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '868566681' do
                      a :class => 'user_image', :href => '/n/people//n/people/YvwmW1C.w', :title => 'Miriam Johnson' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/201185755/1390821963/C-30-30?default=true&sh=6D9BYoXW8FKJs1bALE8qpW);') do
                        end
                      end
                    end
                    li :class => 'event_user_list_item user_item', 'data-id' => '492980456' do
                      a :class => 'user_image', :href => '/n/people//n/people/eaZKHOCl', :title => 'Joe Li' do
                        span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/706485235/1391477976/C-30-30?default=true&sh=wtyA4ehwJJwh2Yb4xnPgvi);') do
                        end
                      end
                    end
                  end
                end
              end
              div :class => 'event_in_list event_row_333927143', 'data-event_id' => '333927143', 'data-start_date' => '2014-02-04', :id => 'some-event-string-for-something-140884' do
                div :class => 'event_start_time' do
                  h2 :class => 'event_day' do
                    text 'February 04'
                  end
                  div :class => 'date_time' do
                    text 'Tuesday'
                    br do
                      text '12:00 AM'
                    end
                  end
                  div :class => 'event_image' do
                    a :class => 'event_in_list_link', :href => '/n/events/some-event-string-for-something-140884' do
                      img :src => 'https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/390288790/1392733434/C-30-30?default=true&sh=vBTWRXfScZVjTW6VfT8hxA'
                    end
                  end
                  div :class => 'event_details' do
                    div :class => 'event_details_text' do
                      a :class => 'event_in_list_link title', :href => '/n/events/some-event-string-for-something-140884', :title => 'This is some featured event!' do
                        text 'This is some featured event!'
                      end
                      div :class => 'city' do
                        span do
                          text 'And this is where that event happens'
                        end
                      end
                      div :class => 'attendees', 'data-count' => '60' do
                        span :class => 'attendee_count' do
                          text '60'
                        end
                        span do
                          text 'Attending'
                        end
                      end
                    end
                    div :class => 'event_buttons_container', 'data-event_slug' => 'some-event-string-for-something-140884' do
                      div :class => 'event_buttons' do
                        a :class => 'action_button button event_list_button leave_event hide disabled_until_load', :href => '#', :id => 'C3CF8CC4C7A36972EEDEBF', :title => 'Leave' do
                          text 'Leave'
                        end
                        script do
                          text '//'
                          rawtext '<![CDATA[
    (function () {
      var button = $("#C3CF8CC4C7A36972EEDEBF");
      button.on("click", function (e) { e.preventDefault(); });
      $.subscribe("jsload", function () {
        button.removeClass("disabled_until_load");
      });
    })();
  // ]]>'
                        end
                        a :class => 'primary_action_button button event_list_button join_event disabled_until_load', :href => '#', :id => 'C3CF8CC4C7A36972EEDEBF', :title => 'Join' do
                          text 'Join'
                        end
                        script do
                          text '//'
                          rawtext '<![CDATA[
    (function () {
      var button = $("#C3CF8CC4C7A36972EEDEBF");
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
                      li :class => 'event_user_list_item user_item', 'data-id' => '736970449' do
                        a :class => 'user_image', :href => '/n/people//n/people/EygdKPx8fp', :title => 'Hermione Johnson' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/454823681/1391833656/C-30-30?default=true&sh=VWyIMZYIFTFvhPxcB9MeBU);') do
                            span :class => 'avatar_badge organizer-icon' do
                            end
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '760579690' do
                        a :class => 'user_image', :href => '/n/people//n/people/H22cTnFRw10GH4h', :title => 'Joe Li' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/354660442/1392382820/C-30-30?default=true&sh=RXBaqBjI2OFRpHd1e4T5rw);') do
                            span :class => 'avatar_badge organizer-icon' do
                            end
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '470584663' do
                        a :class => 'user_image', :href => '/n/people//n/people/1KsMoFECHhtisHX/', :title => 'Kate Miller' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/88188704/1392312712/C-30-30?default=true&sh=kKyL4T7dJICzCO3Q9gGFr9);') do
                            span :class => 'avatar_badge organizer-icon' do
                            end
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '289029584' do
                        a :class => 'user_image', :href => '/n/people//n/people/BJuVXS', :title => 'Miriam Johnson' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/41492819/1392714675/C-30-30?default=true&sh=BqBFMtg0U2jbXuvF8UQVaM);') do
                            span :class => 'avatar_badge organizer-icon' do
                            end
                            span :class => 'verified' do
                              img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
                            end
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '317697592' do
                        a :class => 'user_image', :href => '/n/people//n/people/a4d966dvKqlCv', :title => 'Ben Miller' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/895060172/1390666866/C-30-30?default=true&sh=fNxCS27HrXb0BBa1MEm83s);') do
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '554691484' do
                        a :class => 'user_image', :href => '/n/people//n/people/z51TL.i2np2MU', :title => 'Joe Hernandez' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/826201022/1390422343/C-30-30?default=true&sh=om4tPLrjJEmeusivq9PCLU);') do
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '691935300' do
                        a :class => 'user_image', :href => '/n/people//n/people/7kxjWdVa9R', :title => 'Kate Johnson' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/354759657/1392341489/C-30-30?default=true&sh=3oO8c6QpptiVOEFwBUTOIF);') do
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '302656983' do
                        a :class => 'user_image', :href => '/n/people//n/people/qRwp_QF8Wta3', :title => 'Scott Johnson' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/53501154/1392111108/C-30-30?default=true&sh=qOLN2OfrXTaH0jVdnM0sU6);') do
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '939155836' do
                        a :class => 'user_image', :href => '/n/people//n/people/iTpox7', :title => 'Joe Johnson' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/735964847/1392616995/C-30-30?default=true&sh=yyKZLxnbC3H9jlFu2Qs700);') do
                          end
                        end
                      end
                      li :class => 'event_user_list_item user_item', 'data-id' => '92674062' do
                        a :class => 'user_image', :href => '/n/people//n/people/6OfbOLeQN9', :title => 'Miriam Li' do
                          span(:class => 'avatar circle imgsize_compact_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/main_image/1/575285866/1392056159/C-30-30?default=true&sh=JkBrXVJiSVWQHwcdavQYLB);') do
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
        div :class => 'row-fluid' do
          div :class => 'modal hide fade report-abusive-content', 'data-entity_type' => 'comment' do
            div :class => 'modal-header' do
              button :class => 'close', 'data-dismiss' => 'modal', :type => 'button' do
                text '×'
              end
              h3 do
                text 'Reason for flagging'
              end
            end
            form :action => '/n/flag' do
              input :name => 'id', :type => 'hidden' do
                input :name => 'entity_type', :type => 'hidden' do
                  input :name => 'authenticity_token', :type => 'hidden', :value => 'BZHW+lZIOqSn5Lu+mOKSND+0f4s72zohHSnHbxvZEHU=' do
                    div :class => 'control-group' do
                      div :class => 'controls' do
                        label do
                          select :name => 'flag_type' do
                            optgroup do
                              option :value => 'couch_request' do
                                text 'A Couchrequest'
                              end
                              option :value => 'website_feedback' do
                                text 'Website Feedback'
                              end
                              option :value => 'off_topic' do
                                text 'Off-Topic'
                              end
                            end
                            optgroup do
                              option :value => 'commercial_or_spam' do
                                text 'Commercial Content and Spam'
                              end
                              option :value => 'dating_or_sexual' do
                                text 'Dating/Inappropriate Sexual Content'
                              end
                              option :value => 'abusive_or_illegal' do
                                text 'Abusive or Illegal Content'
                              end
                              option :value => 'privacy_breach' do
                                text 'Shows my Contact/Protected Information'
                              end
                            end
                          end
                          span do
                          end
                        end
                      end
                      p :class => 'help-block' do
                      end
                    end
                    div :class => 'actions' do
                      input :class => 'btn btn-primary', :name => 'submit', :type => 'submit', :value => 'Flag' do
                        a :class => 'cancel btn', 'data-dismiss' => 'modal', :href => 'javascript://' do
                          text 'Cancel'
                        end
                      end
                    end
                  end
                  div :class => 'modal hide fade remove-thread-modal' do
                    div :class => 'modal-header' do
                      button :class => 'close', 'data-dismiss' => 'modal', :type => 'button' do
                        text '×'
                      end
                      h3 do
                        div do
                          text 'Remove?'
                        end
                      end
                    end
                    div :class => 'modal-body' do
                      div do
                        text 'Please confirm you want to delete this comment'
                      end
                      br do
                        br do
                          div :class => 'actions' do
                            a :class => 'confirm btn btn-danger', :href => 'javascript://' do
                              text 'Confirm'
                            end
                            a :class => 'cancel btn', 'data-dismiss' => 'modal', :href => 'javascript://' do
                              text 'Cancel'
                            end
                          end
                        end
                      end
                      div :class => 'threads thread-container well-light well', 'data-commented-on-type' => 'place', 'data-conversation-categories-enabled' => 'true', 'data-more_path' => 'https://www.couchsurfing.org/n/threads?entity_id=26380&entity_type=place&limit=10', 'data-total_thread_count' => '26187' do
                        div :class => 'holder_header' do
                          div :class => 'pull-left' do
                            h3 do
                              span :class => 'entity_threads' do
                                text 'Conversations'
                              end
                              span do
                              end
                              span :class => 'thread_count' do
                                a :href => '/n/places/san-francisco-california-united-states/conversations' do
                                  text 'See all 26187 »'
                                end
                              end
                            end
                          end
                          div :class => 'pull-right' do
                            div :class => 'btn-group', 'data-toggle' => 'buttons-radio' do
                              a :class => 'btn', :href => '/n/settings/threads/compact' do
                                i :class => 'icon-compact icon-large' do
                                end
                              end
                              a :class => 'btn active', :href => '/n/settings/threads/full' do
                                i :class => 'icon-expanded icon-large' do
                                end
                              end
                            end
                          end
                          div :class => 'pull-right' do
                            form :action => '/n/places/san-francisco-california-united-states/search', :method => 'get', :style => 'margin-bottom: 0;' do
                              input :class => 'search', :name => 'q', :placeholder => 'Search Conversations', :style => 'width: 130px; margin-right: 3px;', :type => 'search' do
                              end
                            end
                          end
                        end
                        div :class => 'media thread-form-container add-thread' do
                          span(:class => 'thread-author pull-left avatar circle imgsize_small_thumb', :style => 'background-image:url(https://d20rrv4k3o7n66.cloudfront.net/n/image/serve/P/1/C-60-60?sh=E-af_-fF3G72Xoy9EWb_wQ);') do
                          end
                          div :class => 'media-body' do
                            form :action => '/n/threads', :class => 'thread-reply-form', :method => 'post' do
                              input :name => 'entity_id', :type => 'hidden', :value => '26380' do
                                input :name => 'entity_type', :type => 'hidden', :value => 'place' do
                                  div :class => 'control-group' do
                                    label do
                                    end
                                    div :class => 'controls' do
                                      input :class => 'comment_title', :name => 'comment_title', :placeholder => 'Title', :type => 'text' do
                                      end
                                      p :class => 'help-block' do
                                      end
                                    end
                                    div :class => 'category-picker-container hide' do
                                      a :class => 'close', :href => '#', :type => 'button' do
                                        text '×'
                                      end
                                      div :class => 'category-picker-panel' do
                                        div :class => 'category-picker-options' do
                                          ul do
                                            li :class => 'places-to-stay', 'data-category' => 'places_to_stay' do
                                              div :class => 'category-icon' do
                                                i do
                                                end
                                              end
                                              p :class => 'category-title' do
                                              end
                                              p :class => 'category-desc' do
                                                text 'I’m looking for a place to stay.'
                                              end
                                            end
                                            li :class => 'places-to-stay', 'data-category' => 'meeting_people' do
                                              div :class => 'category-icon' do
                                                i do
                                                end
                                              end
                                              p :class => 'category-title' do
                                              end
                                              p :class => 'category-desc' do
                                                text 'I want to meet new people in the area.'
                                              end
                                            end
                                            li :class => 'places-to-stay', 'data-category' => 'local_advice' do
                                              div :class => 'category-icon' do
                                                i do
                                                end
                                              end
                                              p :class => 'category-title' do
                                              end
                                              p :class => 'category-desc' do
                                                text 'I want to know more about the area.'
                                              end
                                            end
                                            li :class => 'places-to-stay', 'data-category' => 'share_a_ride' do
                                              div :class => 'category-icon' do
                                                i do
                                                end
                                              end
                                              p :class => 'category-title' do
                                              end
                                              p :class => 'category-desc' do
                                                text 'I want to share a ride somewhere.'
                                              end
                                            end
                                            li :class => 'places-to-stay', 'data-category' => 'general' do
                                              div :class => 'category-icon' do
                                                i do
                                                end
                                              end
                                              p :class => 'category-title' do
                                              end
                                              p :class => 'category-desc' do
                                                text 'Observations, conversations, etc...'
                                              end
                                            end
                                            text '[#<OpenStruct symbol=:places_to_stay, name="Places To Stay", description="I’m looking for a place to stay.">, #<OpenStruct symbol=:meeting_people, name="Meeting People", description="I want to meet new people in the area.">, #<OpenStruct symbol=:local_advice, name="Local Advice", description="I want to know more about the area.">, #<OpenStruct symbol=:share_a_ride, name="Share a Ride", description="I want to share a ride somewhere.">, #<OpenStruct symbol=:general, name="Other", description="Observations, conversations, etc...">]'
                                          end
                                        end
                                        div :class => 'places-to-stay-confirmation' do
                                          a :class => 'back centred pull-left', :href => '#' do
                                            span do
                                            end
                                            text 'Back'
                                          end
                                          div :class => 'places-to-stay-confirmation-content centred pull-right' do
                                            p do
                                              strong do
                                                text 'Looking for a place to stay?'
                                              end
                                              text 'Use our CouchSearch to find people with available couches, anywhere in the world!'
                                            end
                                            a :class => 'btn btn-primary btn-large', :href => '/n/trips/plan_trip?referring_link=place_create_post', :id => 'autogen_id_for_tracking_place_conversations_category_place_to_stay_confirmation_action_1' do
                                              text 'Find a Couch with CouchSearch'
                                            end
                                            p do
                                              text 'If you have a different question or comment about finding places to stay, you can'
                                              a :class => 'places-to-stay-confirm', 'data-category' => 'places_to_stay', :href => '#' do
                                                text 'start a conversation'
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                    div :class => 'control-group' do
                                      label do
                                      end
                                      div :class => 'controls' do
                                        textarea :class => 'comment_text', :name => 'comment_text', :placeholder => 'Start a Conversation' do
                                        end
                                      end
                                      p :class => 'help-block' do
                                      end
                                    end
                                    p :class => 'privacy-warning' do
                                      text 'It looks like you’re posting an email address or phone number. To protect your privacy, don’t post any personal contact information here.'
                                    end
                                    div :class => 'hide-when-colapsed row-fluid' do
                                      div :class => 'row-fluid' do
                                        div :class => 'privacy-settings dropdown', 'data-component' => 'privacySettings' do
                                          input :name => 'private_thread', :type => 'hidden', :value => 'true' do
                                            a :class => 'dropdown-toggle', 'data-component' => 'dropdown', :href => '' do
                                              span :class => 'privacy-label' do
                                              end
                                              i :class => 'icon-group' do
                                              end
                                            end
                                            ul :class => 'dropdown-menu pull-right', 'data-component' => 'options' do
                                              li do
                                                a 'data-component' => 'privacyOption', 'data-value' => 'false', :href => '' do
                                                  i :class => 'icon-group' do
                                                  end
                                                  text 'Publicly viewable'
                                                end
                                              end
                                              li do
                                                a 'data-component' => 'privacyOption', 'data-value' => 'true', :href => '' do
                                                  i :class => 'icon-user' do
                                                  end
                                                  text 'Visible to logged-in members only'
                                                end
                                              end
                                            end
                                          end
                                          div :class => 'span6' do
                                            select :name => 'category' do
                                              option :value => 'places_to_stay' do
                                                text 'Places To Stay'
                                              end
                                              option :value => 'meeting_people' do
                                                text 'Meeting People'
                                              end
                                              option :value => 'local_advice' do
                                                text 'Local Advice'
                                              end
                                              option :value => 'share_a_ride' do
                                                text 'Share a Ride'
                                              end
                                              option :value => 'general' do
                                                text 'Other'
                                              end
                                            end
                                          end
                                          div :class => 'buttons span5 pull-right' do
                                            div :class => 'ajax_loading_container' do
                                            end
                                            button :class => 'btn btn-cancel', :type => 'button' do
                                              text 'Cancel'
                                            end
                                            button :class => 'btn btn-primary btn-create' do
                                              text 'Start Conversation'
                                            end
                                            br do
                                              br do
                                              end
                                            end
                                            div :class => 'row-fluid' do
                                              div :class => 'form-footer span12' do
                                                div :class => 'posting-guidelines' do
                                                  h4 do
                                                    text 'Stay safe and be respectful:'
                                                  end
                                                  ul do
                                                    li do
                                                      text 'Don’t post your phone or email. Communicate via Couchsurfing.'
                                                    end
                                                    li do
                                                      text 'Remember: you are responsible for your own safety. Trust your instincts.'
                                                    end
                                                    li do
                                                      text 'Report problems immediately to our'
                                                      a :href => '/n/safety' do
                                                        text 'Trust and Safety Team'
                                                      end
                                                      text '.'
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                    div :class => 'conversation-category-tabs' do
                                      input :id => 'selected-filter', :name => 'selected-filter', :type => 'hidden', :value => 'all' do
                                        table do
                                          tr do
                                            td :class => 'places_to_stay', 'data-conversation-filter' => 'places_to_stay' do
                                              a :href => '?category=places_to_stay' do
                                                text 'Places To Stay'
                                              end
                                            end
                                            td :class => 'meeting_people', 'data-conversation-filter' => 'meeting_people' do
                                              a :href => '?category=meeting_people' do
                                                text 'Meeting People'
                                              end
                                            end
                                            td :class => 'local_advice', 'data-conversation-filter' => 'local_advice' do
                                              a :href => '?category=local_advice' do
                                                text 'Local Advice'
                                              end
                                            end
                                            td :class => 'share_a_ride', 'data-conversation-filter' => 'share_a_ride' do
                                              a :href => '?category=share_a_ride' do
                                                text 'Share a Ride'
                                              end
                                            end
                                            td :class => 'general', 'data-conversation-filter' => 'general' do
                                              a :href => '?category=general' do
                                                text 'Other'
                                              end
                                            end
                                            td :class => 'all', 'data-conversation-filter' => 'all' do
                                              a :href => '?category=all' do
                                                text 'All'
                                              end
                                            end
                                          end
                                        end
                                      end
                                      ul :class => 'entity-container medias' do
                                        text '============================================='
                                      end
                                      div :class => 'well-end' do
                                        a :class => 'see-more', :href => 'https://www.couchsurfing.org/n/threads?entity_id=13&entity_type=place&limit=10' do
                                          text 'More conversations'
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
end
end
end
end
end
