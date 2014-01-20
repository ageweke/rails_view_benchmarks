class HeaderExploreMenu < Erector::Widget
  def content
    ul :class => 'menu_item', :id => 'nav_explore_menu' do
      li :class => 'explore menu_item' do
        a(:class => 'button', :href => '/', :id => 'autogen_id_for_tracking_nav_home_clicked_1', :title => (t('header.explore_menu.home'))) do
          span :translate => 'yes' do
            rawtext t('header.explore_menu.home')
          end
        end
      end
      li :class => 'find_a_couch menu_item' do
        a(:class => 'button', :href => '/n/surfing', :id => 'autogen_id_for_tracking_nav_trips_clicked_1', :title => (t('header.explore_menu.surf'))) do
          span :translate => 'yes' do
            rawtext t('header.explore_menu.surf')
          end
        end
      end
      li :class => 'host_a_traveler menu_item' do
        a(:class => 'button', :href => '/n/hosting', :id => 'autogen_id_for_tracking_nav_host_clicked_1', :title => (t('header.explore_menu.host'))) do
          span :translate => 'yes' do
            rawtext t('header.explore_menu.host')
          end
        end
      end
      li :class => 'global_events menu_item' do
        a(:class => 'button', :href => '/n/events', :id => 'autogen_id_for_tracking_nav_events_clicked_1', :title => (t('header.explore_menu.events'))) do
          span :translate => 'yes' do
            rawtext t('header.explore_menu.events')
          end
        end
      end
      li :class => 'discuss menu_item' do
        a(:class => 'button', :href => '/groups', :id => 'autogen_id_for_tracking_nav_groups_clicked_1', :title => (t('header.explore_menu.discuss'))) do
          span :translate => 'yes' do
            rawtext t('header.explore_menu.discuss')
          end
        end
      end
      li :class => 'help menu_item' do
        a(:class => 'button', :href => '/n/help', :id => 'autogen_id_for_tracking_nav_help_clicked_1', :title => (t('header.explore_menu.help'))) do
          span :translate => 'yes' do
            rawtext t('header.explore_menu.help')
          end
        end
      end
    end
  end
  end
end
