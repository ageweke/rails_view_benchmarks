class Views::Benchmark::PlacePage::Erector::Conversations < Erector::Widget
  def content
    rawtext render(:partial => "#{@partial_base}/comment_report", :locals => { :form_authenticity_token => form_authenticity_token })
    rawtext render(:partial => "#{@partial_base}/comment_remove")
    rawtext render(:partial => "#{@partial_base}/comment_header", :locals => { :place => place })
    rawtext render(:partial => "#{@partial_base}/comment_add", :locals => { :place => place, :conversation_categories => conversation_categories })
    rawtext render(:partial => "#{@partial_base}/comment_tabs", :locals => { :conversation_tabs => conversation_tabs })
    ul :class => 'entity-container medias' do
      rawtext render(:partial => "#{@partial_base}/comment", :collection => comments)
    end
    div :class => 'well-end' do
      a :class => 'see-more', :href => 'https://www.couchsurfing.org/n/threads?entity_id=13&entity_type=place&limit=10' do
        rawtext t('comment.more_conversations')
      end
    end
  end
  end
end
