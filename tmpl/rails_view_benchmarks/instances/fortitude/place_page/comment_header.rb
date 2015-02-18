class Views::Benchmark::CommentHeader < Views::Benchmark::Base
  needs :place

  def content
    div(:class => 'threads thread-container well-light well', 'data-commented-on-type' => 'place', 'data-conversation-categories-enabled' => 'true', 'data-more_path' => ('https://www.couchsurfing.org/n/threads?entity_id=' + (place.id.to_s) + '&entity_type=place&limit=10'), 'data-total_thread_count' => (place.total_threads)) do
      div :class => 'holder_header' do
        div :class => 'pull-left' do
          h3 do
            span :class => 'entity_threads' do
              text t('comment.header.label')
            end
            span do
              text '|'
            end
            span :class => 'thread_count' do
              a(:href => ((place.path.html_safe) + '/conversations')) do
                text t('comment.header.see_all', :num => place.total_threads)
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
          form(:action => ((place.path.html_safe) + '/search'), :method => 'get', :style => 'margin-bottom: 0;') do
            input(:class => 'search', :name => 'q', :placeholder => (t('comment.header.search')), :style => 'width: 130px; margin-right: 3px;', :type => 'search')
          end
        end
      end
    end
  end
end
