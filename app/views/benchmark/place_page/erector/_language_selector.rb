class LanguageSelector < Erector::Widget
  def content
    div :class => 'hidden-menu', :id => 'language_selector_container' do
      div :class => 'menu', :id => 'language_selector_menu' do
        div :class => 'language_selector_columns_container' do
          language_rows = [ [ ], [ ] ]
                  languages.each_with_index do |language, i|
                    language_rows[i % 2] << language
                  end

                  language_rows.each do |row|
            div :class => 'column' do
              row.each do |language|
                a(:class => 'language', 'data-locale' => (language.locale)) do
                  rawtext language.name
                end
              end
            end
          end
        end
        a :class => 'menu-close', :href => '#brand' do
          text 'close'
        end
      end
      a :class => 'trigger', :href => '#language_selector_menu', :id => 'language_selector_button' do
        rawtext t('language_selector.english')
      end
    end
  end
end
