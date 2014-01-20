class MainFooter < Erector::Widget
  def content
    footer :id => 'main-footer' do
      rawtext render(:partial => "#{@partial_base}/language_selector", :locals => { :languages => languages })
      rawtext render(:partial => "#{@partial_base}/social_container", :locals => { :social_links => social_links })
      nav :class => 'site_map' do
        site_map.each do |heading, values|
          div(:class => (heading.gsub(/\s+/, '').downcase)) do
            div :class => 'heading' do
              rawtext heading
            end
            ul :class => 'links' do
              values.each do |title, link|
                li do
                  a(:href => (link.html_safe)) do
                    rawtext title
                  end
                end
              end
            end
          end
        end
      end
      div :class => 'copyright' do
        rawtext t('footer.copyright_notice')
      end
    end
  end
end
