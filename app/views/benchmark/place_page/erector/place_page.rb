class Views::Benchmark::PlacePage::Erector::PlacePage < Erector::Widget
  def content
    rawtext '<!DOCTYPE html>'
    html(:class => 'no-js root-places page-places action-show page-places-show root-places page-places action-show', 'data-logged-in' => (@user.id), 'data-user-main-image' => (cdn(@user.profile_image))) do
      widget Views::Benchmark::PlacePage::Erector::Header.new(:place => @place, :user => @user)
      body do
        div :id => 'viewport' do
          widget Views::Benchmark::PlacePage::Erector::Nav.new(:user => @user, :place => @place)
          div :class => 'main-container-wrapper', :id => 'main-content' do
            widget Views::Benchmark::PlacePage::Erector::PlaceSubnav.new(:subnav_places => @subnav_places)
            widget Views::Benchmark::PlacePage::Erector::PlaceAvatarHeader.new(:place => @place, :subscription_options => @subscription_options, :part_of => @part_of, :nearby => @nearby)
            section :class => 'main-content container' do
              widget Views::Benchmark::PlacePage::Erector::FeaturedEvents.new(:featured_events => @featured_events)
              div :class => 'row-fluid' do
                widget Views::Benchmark::PlacePage::Erector::Conversations.new(:place => @place, :conversation_categories => @conversation_categories, :form_authenticity_token => @form_authenticity_token, :conversation_tabs => @conversation_tabs, :comments => @comments)
              end
            end
            div :class => 'span4' do
              div :class => 'row-fluid', :id => 'sidebar' do
                widget Views::Benchmark::PlacePage::Erector::Events.new(:trending_events => @trending_events, :place => @place, :total_event_count => @total_event_count, :upcoming_events => @upcoming_events)
                div :class => 'well big_groups_btn' do
                  a :class => 'link_button button', :href => '/n/o/groups', :title => 'All Groups' do
                    text 'All Groups'
                  end
                end
                widget Views::Benchmark::PlacePage::Erector::Surfers.new(:place => @place, :surfers => @surfers)
                widget Views::Benchmark::PlacePage::Erector::RelatedGroups.new(:related_groups => @related_groups)
                div :class => 'well big_groups_btn' do
                  a(:class => 'link_button button', :href => '/n/locals/in/place/13', :id => 'autogen_id_for_tracking_place_sidebar_meet_people_button_clicked_1', :title => (t('meet_people'))) do
                    rawtext t('meet_people')
                  end
                end
              end
            end
          end
        end
      end
      widget Views::Benchmark::PlacePage::Erector::MainFooter.new(:languages => @languages, :site_map => @site_map, :social_links => @social_links)
      widget Views::Benchmark::PlacePage::Erector::HiddenContent.new(:user => @user)
      widget Views::Benchmark::PlacePage::Erector::FooterJavascript.new(:user => @user, :place => @place)
    end
  end
end
