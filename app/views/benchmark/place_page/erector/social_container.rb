class Views::Benchmark::PlacePage::Erector::SocialContainer < Erector::Widget
  attr_reader :social_links

  def content
    nav :class => 'social_container' do
      div :class => 'call-to-action' do
        text 'Connect with us:'
      end
      ul :class => 'social' do
        social_links.each do |social_link|
          li do
            a(:class => ('icon_button button ' + (social_link.name.gsub(/\s+/, '').downcase)), :href => (social_link.link.html_safe), :target => '_blank', :title => (social_link.name)) do
              text social_link.name
            end
          end
        end
      end
    end
  end
end
