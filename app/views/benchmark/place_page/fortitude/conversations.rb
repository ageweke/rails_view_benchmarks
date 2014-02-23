class Views::Benchmark::PlacePage::Fortitude::Conversations < Views::Benchmark::PlacePage::Fortitude::Base
  needs :place, :form_authenticity_token, :conversation_categories, :conversation_tabs, :comments

  def content
    widget Views::Benchmark::PlacePage::Fortitude::CommentReport.new(:form_authenticity_token => form_authenticity_token)
    widget Views::Benchmark::PlacePage::Fortitude::CommentRemove.new
    widget Views::Benchmark::PlacePage::Fortitude::CommentHeader.new(:place => place)
    widget Views::Benchmark::PlacePage::Fortitude::CommentAdd.new(:place => place, :conversation_categories => conversation_categories)
    widget Views::Benchmark::PlacePage::Fortitude::CommentTabs.new(:conversation_tabs => conversation_tabs)
    ul :class => 'entity-container medias' do
      comments.each do |the_comment|
        widget Views::Benchmark::PlacePage::Fortitude::Comment.new(:the_comment => the_comment)
      end
    end
    div :class => 'well-end' do
      a :class => 'see-more', :href => 'https://www.couchsurfing.org/n/threads?entity_id=13&entity_type=place&limit=10' do
        text t('comment.more_conversations')
      end
    end
  end
end
