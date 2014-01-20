class Views::Benchmark::PlacePage::Erector::EmailDropdown < Erector::Widget
  def content
    section do
      div :class => 'sidebar-list' do
        div :class => 'holder_header' do
          div :class => 'pull-left' do
            h3 do
              rawtext t('email_dropdown.heading')
            end
          end
        end
        div :class => 'entity-subscription' do
          div :class => 'entity-subscription-form-container' do
            form do
              input :name => 'authenticity_token', :type => 'hidden', :value => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE='
              input(:name => 'subscribed_on_id', :type => 'hidden', :value => (place.id))
              input :name => 'subscribed_on_type', :type => 'hidden', :value => 'place'
              p do
                rawtext t('email_dropdown.subheading')
              end
              ul :class => 'medias' do
                li :class => 'media radio_input' do
                  subscription_options.each do |subscription_option|
                    div :class => 'control-group' do
                      div :class => 'controls' do
                        label do
                          input(:class => 'subscription_type', :name => 'subscription_type', :type => 'radio', :value => (subscription_option.lkey))
                          span do
                            text '&nbsp;'
                            strong do
                              rawtext subscription_option.name
                            end
                            rawtext subscription_option.detail
                          end
                        end
                      end
                      p :class => 'help-block' do
                      end
                    end
                  end
                end
              end
              button :class => 'btn btn-primary' do
                rawtext t('email_dropdown.button')
              end
              span :class => 'cancel' do
                rawtext t('buttons.cancel')
              end
              span :class => 'unfollow icon-heart-broken icon-large' do
                rawtext t('email_dropdown.unfollow')
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
