class Views::Benchmark::CommentTabs < Erector::Widget
  attr_reader :conversation_tabs

  def content
    div :class => 'conversation-category-tabs' do
      input :id => 'selected-filter', :name => 'selected-filter', :type => 'hidden', :value => 'all'
      table do
        tr do
          conversation_tabs.each do |tab|
            td(:class => (tab.symbol), 'data-conversation-filter' => (tab.symbol)) do
              a(:href => ('?category=' + (tab.symbol.to_s))) do
                text tab.name
              end
            end
          end
        end
      end
    end
  end
end
