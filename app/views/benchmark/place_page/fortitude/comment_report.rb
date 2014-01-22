class Views::Benchmark::PlacePage::Fortitude::CommentReport < Views::Benchmark::PlacePage::Fortitude::Base
  needs :form_authenticity_token

  def content
    div :class => 'modal hide fade report-abusive-content', 'data-entity_type' => 'comment' do
      div :class => 'modal-header' do
        button :class => 'close', 'data-dismiss' => 'modal', :type => 'button' do
          text '&times;'
        end
        h3 do
          text t('comment.report.header')
        end
      end
      form :action => '/n/flag' do
        input :name => 'id', :type => 'hidden'
        input :name => 'entity_type', :type => 'hidden'
        input :name => 'authenticity_token', :type => 'hidden', :value => form_authenticity_token
        div :class => 'control-group' do
          div :class => 'controls' do
            label do
              select :name => 'flag_type' do
                optgroup do
                  option :value => 'couch_request' do
                    text t('comment.report.couch_request')
                  end
                  option :value => 'website_feedback' do
                    text t('comment.report.website_feedback')
                  end
                  option :value => 'off_topic' do
                    text t('comment.report.off_topic')
                  end
                end
                optgroup do
                  option :value => 'commercial_or_spam' do
                    text t('comment.report.commercial_or_spam')
                  end
                  option :value => 'dating_or_sexual' do
                    text t('comment.report.dating_or_sexual')
                  end
                  option :value => 'abusive_or_illegal' do
                    text t('comment.report.abusive_or_illegal')
                  end
                  option :value => 'privacy_breach' do
                    text t('comment.report.privacy_breach')
                  end
                end
              end
              span do
                text '&nbsp;'
              end
            end
          end
          p :class => 'help-block' do
          end
        end
        div :class => 'actions' do
          input :class => 'btn btn-primary', :name => 'submit', :type => 'submit', :value => 'Flag'
          a :class => 'cancel btn', 'data-dismiss' => 'modal', :href => 'javascript://' do
            text t('buttons.cancel')
          end
        end
      end
    end
  end
end
