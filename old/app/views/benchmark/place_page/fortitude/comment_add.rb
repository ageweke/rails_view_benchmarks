class Views::Benchmark::PlacePage::Fortitude::CommentAdd < Views::Benchmark::PlacePage::Fortitude::Base
  needs :place, :conversation_categories

  def places_to_stay_confirmation
    div :class => 'places-to-stay-confirmation' do
      a :class => 'back centred pull-left', :href => '#' do
        span do
          text '&nbsp;'
        end
        text 'Back'
      end
      div :class => 'places-to-stay-confirmation-content centred pull-right' do
        p do
          strong do
            text t('comment.add.couchsearch_header')
          end
          text t('comment.add.couchsearch_body')
        end
        a :class => 'btn btn-primary btn-large', :href => '/n/trips/plan_trip?referring_link=place_create_post', :id => 'autogen_id_for_tracking_place_conversations_category_place_to_stay_confirmation_action_1' do
          text t('comment.add.couchsearch_button')
        end
        p do
          text t('comment.add.couchsearch_note', :link_start => "<a class=\"places-to-stay-confirm\" data-category=\"places_to_stay\" href=\"#\">", :link_end => "</a>").html_safe
        end
      end
    end
  end

  static_if_desired :places_to_stay_confirmation

  def privacy_settings_dropdown
    div :class => 'privacy-settings dropdown', 'data-component' => 'privacySettings' do
      input :name => 'private_thread', :type => 'hidden', :value => 'true'
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
            text t('comment.public')
          end
        end
        li do
          a 'data-component' => 'privacyOption', 'data-value' => 'true', :href => '' do
            i :class => 'icon-user' do
            end
            text t('comment.private')
          end
        end
      end
    end
  end

  static_if_desired :privacy_settings_dropdown

  def posting_guidelines
    div :class => 'row-fluid' do
      div :class => 'form-footer span12' do
        div :class => 'posting-guidelines' do
          h4 do
            text t('comment.posting_guidelines.header')
          end
          ul do
            li do
              text t('comment.posting_guidelines.l1')
            end
            li do
              text t('comment.posting_guidelines.l2')
            end
            li do
              text t('comment.posting_guidelines.l3', :href => '/n/safety').html_safe
            end
          end
        end
      end
    end
  end

  static_if_desired :posting_guidelines

  def content
    div :class => 'media thread-form-container add-thread' do
      bg_img = cdn("/n/image/serve/P/1/C-60-60?sh=E-af_-fF3G72Xoy9EWb_wQ")
      span(:class => 'thread-author pull-left avatar circle imgsize_small_thumb', :style => ('background-image:url(' + bg_img + ');')) do
      end
      div :class => 'media-body' do
        form :action => '/n/threads', :class => 'thread-reply-form', :method => 'post' do
          input(:name => 'entity_id', :type => 'hidden', :value => (place.id))
          input :name => 'entity_type', :type => 'hidden', :value => 'place'
          div :class => 'control-group' do
            label do
            end
            div :class => 'controls' do
              input :class => 'comment_title', :name => 'comment_title', :placeholder => 'Title', :type => 'text'
            end
            p :class => 'help-block' do
            end
          end
          div :class => 'category-picker-container hide' do
            a :class => 'close', :href => '#', :type => 'button' do
              text '&times;'
            end
            div :class => 'category-picker-panel' do
              div :class => 'category-picker-options' do
                ul do
                  conversation_categories.each do |category|
                  li(:class => 'places-to-stay', 'data-category' => (category.symbol.to_s.html_safe)) do
                    div :class => 'category-icon' do
                      i do
                        text '&nbsp;'
                      end
                    end
                    p :class => 'category-title' do
                      text category.title
                    end
                    p :class => 'category-desc' do
                      text category.description
                    end
                  end
                end
              end
            end
            places_to_stay_confirmation
          end
        end
        div :class => 'control-group' do
          label do
          end
          div :class => 'controls' do
            textarea(:class => 'comment_text', :name => 'comment_text', :placeholder => (t('comment.add.placeholder'))) do
            end
          end
          p :class => 'help-block' do
          end
        end
        p :class => 'privacy-warning' do
          text t('comment.privacy_warning')
        end
        div :class => 'hide-when-colapsed row-fluid' do
          div :class => 'row-fluid' do
            privacy_settings_dropdown
            div :class => 'span6' do
              select :name => 'category' do
                conversation_categories.each do |category|
                  option(:value => (category.symbol)) do
                    text category.name
                  end
                end
              end
            end
            div :class => 'buttons span5 pull-right' do
              div :class => 'ajax_loading_container' do
              end
              button :class => 'btn btn-cancel', :type => 'button' do
                text t('buttons.cancel')
              end
              text '&nbsp;'
              button :class => 'btn btn-primary btn-create' do
                text t('comment.add.start')
              end
              br
              br
            end
          end
          posting_guidelines
        end
      end
    end
  end
  end
end
