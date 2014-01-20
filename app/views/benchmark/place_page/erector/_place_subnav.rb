class Views::Benchmark::PlacePage::Erector::PlaceSubnav < Erector::Widget
  def content
    nav :class => 'subnav' do
      form :action => '/n/locations/search_place', :class => 'search_place', :method => 'post' do
        input :name => 'authenticity_token', :type => 'hidden', :value => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE='
        label :for => 'cs_typeahead_input' do
          div :class => 'search_icon' do
          end
          div :class => 'input_container' do
            input :autocomplete => 'off', 'data-cs-typeahead' => 'PlaceSubnavNavigator', 'data-place-navigator' => 'true', :id => 'cs_typeahead_input', :name => 'location_query', :placeholder => 'Find a place…', :tabindex => '1', :type => 'text'
            span :class => 'typeahead_prompt' do
              rawtext t('place_subnav.find')
            end
          end
        end
      end
      ul do
        rawtext render(:partial => "#{@partial_base}/place_subnav_button", :collection => subnav_places)
      end
    end
  end
end
