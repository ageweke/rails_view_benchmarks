class Views::Benchmark::PlacePage::Fortitude::Nav < Views::Benchmark::PlacePage::Fortitude::Base
  needs :user, :place

  def content
    header :id => 'main-header' do
      nav :id => 'main-menu' do
        h1 :id => 'brand' do
          a :href => '/', :id => 'autogen_id_for_tracking_nav_logo_clicked_1' do
            cdn_img = cdn("/assets/logo/logo-small-a6218f040fc83533cd4ce0ecfec406e4.png")
            img :alt => 'Couchsurfing', :height => '41', :src => cdn_img, :width => '117'
          end
        end
        a(:class => ('button trigger ' + (@user.unread_messages > 0 ? 'unread' : 'read')), 'data-toggle' => 'dropdown', :href => '#viewport', :id => 'logged_in_menu_trigger') do
          text 'Menu'
          span :class => 'message-bubble' do
            text user.unread_messages
          end
        end
        div :id => 'logged_in_menu' do
          a :class => 'close_button', :href => '#', :id => 'logged_in_menu_close' do
            text 'Close'
          end
          widget Views::Benchmark::PlacePage::Fortitude::HeaderUserMenu.new(:user => user, :place => place)
          li :class => 'menu_item', :id => 'nav_couch_manager' do
            a :class => ' button', :href => '/n/o/couchmanager', :id => 'autogen_id_for_tracking_nav_couchrequests_clicked_1', :title => 'Couchrequests' do
              text 'Couchrequests'
            end
          end
          li :class => 'menu_item', :id => 'nav_messages' do
            a :class => 'unread button', :href => '/n/o/messages', :id => 'autogen_id_for_tracking_nav_messages_clicked_1', :title => 'Messages' do
              text 'Messages'
            end
            span :class => 'message-bubble' do
              text '24'
            end
          end
        end
        widget Views::Benchmark::PlacePage::Fortitude::HeaderExploreMenu.new
      end
      div :class => 'flash-spot' do
      end
    end
  end
end
