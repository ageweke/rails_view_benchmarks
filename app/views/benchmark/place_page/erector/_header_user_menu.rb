class HeaderUserMenu < Erector::Widget
  def content
    ul :class => 'menu', :id => 'nav_user_menu' do
      li :class => 'menu_item', 'data-view' => 'HeaderDropdown', :id => 'nav_user_settings' do
        a :class => 'trigger button', 'data-toggle' => 'dropdown', :href => '#nav_user_settings', :id => 'navbar_user_settings_trigger' do
          span(:class => 'avatar imgsize_compact_thumb', :style => ('background-image:url(' + (cdn(user.profile_image)) + ');')) do
          end
          span(:class => 'username', :title => (user.first_name)) do
            rawtext user.first_name
          end
        end
        ul :class => 'dropdown_menu submenu', 'data-component' => 'options', :id => 'navbar_user_settings_menu' do
          li :class => 'menu_item' do
            a(:class => 'button', :href => (user.profile_path), :id => 'autogen_id_for_tracking_nav_profile_clicked_1', :title => (t('header.user_menu.my_profile'))) do
              rawtext t('header.user_menu.my_profile')
            end
          end
          li :class => 'menu_item' do
            a :class => 'button', :href => '/n/o/user_account_settings', :id => 'autogen_id_for_tracking_nav_account_settings_clicked_1' do
              rawtext t('header.user_menu.account_settings')
            end
          end
          li :class => 'menu_item' do
            a(:class => 'button', :href => (place.path), :id => 'autogen_id_for_tracking_nav_place_page_clicked_1') do
              rawtext t('header.user_menu.local_place_page')
            end
          end
          li :class => 'menu_item' do
            a :class => 'button', :href => '/n/logout', :id => 'autogen_id_for_tracking_nav_log_out_clicked_1' do
              rawtext t('header.user_menu.logout')
            end
          end
        end
      end
  end
end
