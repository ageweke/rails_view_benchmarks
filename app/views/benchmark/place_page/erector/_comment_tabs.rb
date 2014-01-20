class CommentTabs < Erector::Widget
  def content
    div :class => 'conversation-category-tabs' do
      input :id => 'selected-filter', :name => 'selected-filter', :type => 'hidden', :value => 'all'
      table do
        tr do
          conversation_tabs.each do |tab|
            td(:class => (tab.symbol), 'data-conversation-filter' => (tab.symbol)) do
              a(:href => ('?category=' + (tab.symbol))) do
                rawtext tab.name
              end
            end
          end
        end
      end
    end
  end
end
