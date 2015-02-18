class Views::Benchmark::Index < Views::Benchmark::Base
  needs :user, :place, :subnav_places, :featured_events, :part_of, :nearby, :subscription_options, :conversation_categories
  needs :conversation_tabs, :form_authenticity_token, :comments, :trending_events, :total_event_count
  needs :upcoming_events, :surfers, :related_groups, :languages, :site_map, :social_links

  def content
    rawtext '<!DOCTYPE html>'
    html(:class => 'no-js root-places page-places action-show page-places-show root-places page-places action-show', 'data-logged-in' => (user.id), 'data-user-main-image' => (cdn(user.profile_image))) do
      widget Views::Benchmark::Header.new(:place => place, :user => user)
      body do
        div :id => 'viewport' do
          widget Views::Benchmark::Nav.new(:user => user, :place => place)
          div :class => 'main-container-wrapper', :id => 'main-content' do
            widget Views::Benchmark::PlaceSubnav.new(:subnav_places => subnav_places)
            widget Views::Benchmark::PlaceAvatarHeader.new(:place => place, :subscription_options => subscription_options, :part_of => part_of, :nearby => nearby)
            section :class => 'main-content container' do
              widget Views::Benchmark::FeaturedEvents.new(:featured_events => featured_events)
              div :class => 'row-fluid' do
                widget Views::Benchmark::Conversations.new(:place => place, :conversation_categories => conversation_categories, :form_authenticity_token => form_authenticity_token, :conversation_tabs => conversation_tabs, :comments => comments)
              end
            end
            div :class => 'span4' do
              div :class => 'row-fluid', :id => 'sidebar' do
                widget Views::Benchmark::Events.new(:trending_events => trending_events, :place => place, :total_event_count => total_event_count, :upcoming_events => upcoming_events)
                div :class => 'well big_groups_btn' do
                  a :class => 'link_button button', :href => '/n/o/groups', :title => 'All Groups' do
                    text 'All Groups'
                  end
                end
                widget Views::Benchmark::Surfers.new(:place => place, :surfers => surfers)
                widget Views::Benchmark::RelatedGroups.new(:related_groups => related_groups)
                div :class => 'well big_groups_btn' do
                  a(:class => 'link_button button', :href => '/n/locals/in/place/13', :id => 'autogen_id_for_tracking_place_sidebar_meet_people_button_clicked_1', :title => (t('meet_people'))) do
                    text t('meet_people')
                  end
                end
              end
            end
          end
        end
      end
      widget Views::Benchmark::MainFooter.new(:languages => languages, :site_map => site_map, :social_links => social_links)
      widget Views::Benchmark::HiddenContent.new(:user => user)
      widget Views::Benchmark::FooterJavascript.new(:user => user, :place => place)
    end
  end
end
