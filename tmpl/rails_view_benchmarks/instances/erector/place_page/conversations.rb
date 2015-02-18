class Views::Benchmark::Conversations < Erector::Widget
  attr_reader :place, :form_authenticity_token, :conversation_categories, :conversation_tabs, :comments

  def content
    widget Views::Benchmark::CommentReport.new(:form_authenticity_token => form_authenticity_token)
    widget Views::Benchmark::CommentRemove.new
    widget Views::Benchmark::CommentHeader.new(:place => place)
    widget Views::Benchmark::CommentAdd.new(:place => place, :conversation_categories => conversation_categories)
    widget Views::Benchmark::CommentTabs.new(:conversation_tabs => conversation_tabs)
    ul :class => 'entity-container medias' do
      comments.each do |comment|
        widget Views::Benchmark::Comment.new(:comment => comment)
      end
    end
    div :class => 'well-end' do
      a :class => 'see-more', :href => 'https://www.couchsurfing.org/n/threads?entity_id=13&entity_type=place&limit=10' do
        text t('comment.more_conversations')
      end
    end
  end
end
