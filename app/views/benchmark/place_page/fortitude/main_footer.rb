class Views::Benchmark::PlacePage::Fortitude::MainFooter < Views::Benchmark::PlacePage::Fortitude::Base
  needs :languages, :social_links, :site_map

  def content
    footer :id => 'main-footer' do
      widget Views::Benchmark::PlacePage::Fortitude::LanguageSelector.new(:languages => languages)
      widget Views::Benchmark::PlacePage::Fortitude::SocialContainer.new(:social_links => social_links)
      nav :class => 'site_map' do
        site_map.each do |heading, values|
          div(:class => (heading.gsub(/\s+/, '').downcase)) do
            div :class => 'heading' do
              text heading
            end
            ul :class => 'links' do
              values.each do |title, link|
                li do
                  a(:href => (link.html_safe)) do
                    text title
                  end
                end
              end
            end
          end
        end
      end
      div :class => 'copyright' do
        text t('footer.copyright_notice')
      end
    end
  end
end
