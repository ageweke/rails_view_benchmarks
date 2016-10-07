require 'views/benchmark/comment_reply'

class Views::Benchmark::Comment < Erector::Widget
  attr_reader :comment

  def content
    li(:class => 'thread media', 'data-commented-on-type' => 'place', 'data-creator-id' => (comment.creator_id), 'data-entity-id' => (comment.entity_id), 'data-thread-slug' => (comment.slug.html_safe), 'data-total-replies' => (comment.total_replies)) do
      a(:class => 'avatar_link', :href => (comment.creator_profile_link.html_safe)) do
        span(:class => 'pull-left avatar md_circle imgsize_large_thumb', :style => ('background-image:url(' + (cdn(comment.creator_profile_image.html_safe)) + ');')) do
        end
      end
      div :class => 'media-body' do
        div do
          a(:href => (comment.creator_profile_link.html_safe)) do
          end
          div :class => 'comment-text' do
            div :class => 'comment-header row-fluid' do
              div :class => 'span12' do
                h4 do
                  a(:href => ('/n/threads/' + (comment.slug.html_safe)), :class => 'reply-title') do
                    text comment.thread_title
                  end
                  div :class => 'comment-details' do
                    time('data-component' => 'timestamp', 'data-original-timestamp' => (comment.created_at.iso8601), :datetime => (comment.created_at.iso8601)) do
                    end
                  end
                end
                span do
                  a(:class => 'reply-creator', :href => (comment.creator_profile_link.html_safe)) do
                    text comment.creator_name
                  end
                end
                span do
                  a(:href => ('/send_message.html?id=' + (comment.creator_profile_encoded_id)), :id => 'autogen_id_for_tracking_place_conversations_send_private_message_1', :style => 'float: left; margin: 0 0.5em; color: #8B8B8B') do
                    cdn_img = cdn("/assets/private_message-123bd0b0aee5c2e2a97dab4360915ad5.png")
                    img :alt => 'Private_message', :src => cdn_img
                  end
                end
              end
            end
            div :class => 'row-fluid' do
              div :class => 'span11' do
                div :class => 'comment-body-text' do
                  div :class => 'more-link' do
                    span :class => 'shortened-text' do
                      text comment.short_text
                    end
                    rawtext '&nbsp;'
                    a :class => 'show-more-link' do
                      text t('comment.more')
                    end
                    span :class => 'on-show-only' do
                      text comment.more_text
                      a :class => 'show-less-link' do
                        text t('comment.less')
                      end
                    end
                  end
                  div :class => 'thread-reply-view' do
                    div :class => 'thread_participants hidden' do
                      span :class => 'show-reply-count' do
                        a :class => 'reveal-comments', :rel => '11605597' do
                          text t('comment.show_replies')
                        end
                      end
                      comment.replies[0..9].each do |reply|
                        a(:class => 'avatar_link', :href => (reply.profile_link.html_safe)) do
                          span(:class => 'avatar sm_circle imgsize_small_thumb', :style => ('background-image:url(' + (cdn(reply.profile_image)) + ');')) do
                          end
                        end
                      end
                      span :class => 'last_replied_at' do
                        text t('comment.latest_reply')
                        time('data-component' => 'timestamp', :datetime => (comment.replies[-1].created_at.iso8601)) do
                        end
                      end
                    end
                    div :class => 'replies-and-form inline' do
                      div :class => 'reply-container' do
                        div :class => 'paginate_replies hidden' do
                          a :class => 'see-more-replies' do
                            text t('comment.show_more', :num => comment.replies.length)
                          end
                        end
                        div(:class => 'replies', :id => ('comments_on_' + (comment.id.to_s))) do
                          comment.replies.each { |reply| widget Views::Benchmark::CommentReply.new(:comment_reply => reply) }
                        end
                      end
                      div :class => 'media thread-form-container reply-thread' do
                        span(:class => 'thread-author pull-left avatar circle imgsize_small_thumb', :style => ('background-image:url(' + (cdn(comment.creator_profile_image)) + ');')) do
                        end
                        div :class => 'media-body' do
                          form(:action => ('/n/threads/' + (comment.slug.html_safe) + '/replies'), :class => 'thread-reply-form', :method => 'post') do
                            input(:name => 'parent_id', :type => 'hidden', :value => (comment.id))
                            div :class => 'control-group' do
                              label do
                              end
                              div :class => 'controls' do
                                textarea :class => 'comment_text', :name => 'comment_text', :placeholder => 'Write a reply' do
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
                                div :class => 'span6' do
                                end
                                div :class => 'buttons span5 pull-right' do
                                  div :class => 'ajax_loading_container' do
                                  end
                                  button :class => 'btn btn-cancel', :type => 'button' do
                                    text t('buttons.cancel')
                                  end
                                  rawtext '&nbsp;'
                                  button :class => 'btn btn-primary btn-create' do
                                    text t('comment.post_reply')
                                  end
                                  br
                                  br
                                end
                              end
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
                          end
                        end
                      end
                    end
                  end
                end
                div :class => 'span1' do
                  div(:class => 'comment-context-menu dropdown pull-right', 'data-component' => 'contextMenu', 'data-entity_id' => (comment.id), 'data-entity_type' => 'comment') do
                    a :class => 'dropdown-toggle', 'data-component' => 'dropdown', :href => '' do
                      span :class => 'icon-flyout icon-large' do
                      end
                    end
                    ul :class => 'dropdown-menu pull-right', 'data-component' => 'options' do
                      li do
                        a(:class => 'share get_link', :href => ('/n/threads/' + (comment.slug.html_safe)), :target => '_blank') do
                          i :class => 'icon-mail' do
                          end
                          text t('comment.get_link')
                        end
                      end
                      li :class => 'divider' do
                      end
                      li 'data-visible-to' => 'creator' do
                        a :class => 'edit-comment', :href => '' do
                          i :class => 'icon-pen' do
                          end
                          text t('comment.edit_this_post')
                        end
                      end
                      li 'data-visible-to' => 'creator' do
                        a :class => 'delete-comment', :href => '' do
                          i :class => 'icon-close' do
                          end
                          text t('comment.delete_this_post')
                        end
                      end
                      li 'data-visible-to' => 'non-creator' do
                        a :class => 'report-trigger', :href => '' do
                          i :class => 'icon-caution' do
                          end
                          text t('comment.flag_this_post')
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
