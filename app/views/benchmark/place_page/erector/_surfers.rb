class Views::Benchmark::PlacePage::Erector::Surfers < Erector::Widget
  def content
    div :class => 'well people_container' do
      h3 :class => 'holder_header' do
        rawtext t('surfers.title')
      end
      rawtext render(:partial => "#{@partial_base}/surfer", :collection => surfers)
      div :class => 'big_cta_btn' do
        a(:class => 'link_button button', :force_login => 'true', :href => ('/n/travelers/in/place/' + (place.path.html_safe)), :id => 'autogen_id_for_tracking_place_ocrs_clicked_more_1', :title => (t('surfers.host'))) do
          rawtext t('surfers.host')
        end
      end
    end
  end
end
