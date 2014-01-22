class Views::Benchmark::PlacePage::Fortitude::CommentReply < Views::Benchmark::PlacePage::Fortitude::Base
  needs :comment_reply

  def content
    div(:class => 'reply hidden media', 'data-commented-on-type' => 'place', 'data-creator-id' => (comment_reply.creator_id), 'data-entity-id' => (comment_reply.id), 'data-thread-slug' => (comment_reply.slug)) do
      a(:class => 'avatar_link', :href => (comment_reply.profile_link.html_safe)) do
        span(:class => 'pull-left avatar md_circle imgsize_large_thumb', :style => ('background-image:url(' + (cdn(comment_reply.profile_image).html_safe) + ');')) do
        end
      end
      div :class => 'media-body' do
        div do
          a(:href => (comment_reply.profile_link.html_safe)) do
          end
          div :class => 'comment-text' do
            div :class => 'comment-header row-fluid' do
              div :class => 'span12' do
                span do
                  a(:class => 'reply-creator', :href => (comment_reply.profile_link.html_safe)) do
                    text comment_reply.creator_name
                  end
                end
                span do
                  a(:href => ('/send_message.html?id=' + (comment_reply.creator_profile_encoded_id)), :id => 'autogen_id_for_tracking_place_conversations_send_private_message_2', :style => 'float: left; margin: 0 0.5em; color: #8B8B8B') do
                    cdn_img = cdn("/assets/private_message-123bd0b0aee5c2e2a97dab4360915ad5.png")
                    img :alt => 'Private_message', :src => cdn_img
                  end
                end
                div :class => 'comment-details' do
                  time('data-component' => 'timestamp', 'data-original-timestamp' => (comment_reply.created_at.iso8601), :datetime => (comment_reply.created_at.iso8601)) do
                  end
                end
              end
            end
            div :class => 'row-fluid' do
              div :class => 'span11' do
                div :class => 'comment-body-text' do
                  text comment_reply.text
                  br
                  span :class => 'user-links' do
                    a :href => 'https://t.co/abcdefg', :target => '_blank' do
                      text 'https://t.co/abcdefg'
                    end
                  end
                end
              end
              div :class => 'span1' do
                div(:class => 'comment-context-menu dropdown pull-right', 'data-component' => 'contextMenu', 'data-entity_id' => (comment_reply.id), 'data-entity_type' => 'comment') do
                  a :class => 'dropdown-toggle', 'data-component' => 'dropdown', :href => '' do
                    span :class => 'icon-flyout icon-large' do
                    end
                  end
                  ul :class => 'dropdown-menu pull-right', 'data-component' => 'options' do
                    li do
                      a(:class => 'share get_link', :href => ('/n/threads/' + (comment_reply.slug)), :target => '_blank') do
                        i :class => 'icon-mail' do
                        end
                        text t('comment.reply.get_link')
                      end
                    end
                    li :class => 'divider' do
                    end
                    li 'data-visible-to' => 'creator' do
                      a :class => 'edit-comment', :href => '' do
                        i :class => 'icon-pen' do
                        end
                        text t('comment.reply.edit')
                      end
                    end
                    li 'data-visible-to' => 'creator' do
                      a :class => 'delete-comment', :href => '' do
                        i :class => 'icon-close' do
                        end
                        text t('comment.reply.delete')
                      end
                    end
                    li 'data-visible-to' => 'non-creator' do
                      a :class => 'report-trigger', :href => '' do
                        i :class => 'icon-caution' do
                        end
                        text t('comment.reply.flag')
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
