class Views::Benchmark::PlacePage::Erector::PlacePage < Erector::Widget
  def content
    rawtext '<!DOCTYPE html>'
    html(:class => 'no-js root-places page-places action-show page-places-show root-places page-places action-show', 'data-logged-in' => (@user.id), 'data-user-main-image' => (cdn(@user.profile_image))) do
      rawtext render(:partial => "#{@partial_base}/header", :locals => { :place => @place, :user => @user })
      body do
        div :id => 'viewport' do
          rawtext render(:partial => "#{@partial_base}/nav", :locals => { :user => @user, :place => @place })
          div :class => 'main-container-wrapper', :id => 'main-content' do
            rawtext render(:partial => "#{@partial_base}/place_subnav", :locals => { :subnav_places => @subnav_places })
            rawtext render(:partial => "#{@partial_base}/place_avatar_header", :locals => { :place => @place, :subscription_options => @subscription_options, :part_of => @part_of, :nearby => @nearby })
            section :class => 'main-content container' do
              rawtext render(:partial => "#{@partial_base}/featured_events", :locals => { :featured_events => @featured_events })
              div :class => 'row-fluid' do
                rawtext render(:partial => "#{@partial_base}/conversations", :locals => { :place => @place, :conversation_categories => @conversation_categories, :form_authenticity_token => @form_authenticity_token, :conversation_tabs => @conversation_tabs, :comments => @comments })
              end
            end
            div :class => 'span4' do
              div :class => 'row-fluid', :id => 'sidebar' do
                rawtext render(:partial => "#{@partial_base}/events", :locals => { :trending_events => @trending_events, :place => @place, :total_event_count => @total_event_count, :upcoming_events => @upcoming_events })
                div :class => 'well big_groups_btn' do
                  a :class => 'link_button button', :href => '/n/o/groups', :title => 'All Groups' do
                    text 'All Groups'
                  end
                end
                rawtext render(:partial => "#{@partial_base}/surfers", :locals => { :place => @place, :surfers => @surfers })
                rawtext render(:partial => "#{@partial_base}/related_groups")
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
      rawtext render(:partial => "#{@partial_base}/main_footer", :locals => { :languages => @languages, :site_map => @site_map, :social_links => @social_links })
      rawtext render(:partial => "#{@partial_base}/hidden_content", :locals => { :user => @user })
      rawtext render(:partial => "#{@partial_base}/footer_javascript", :locals => { :user => @user, :place => @place })
    end
  end
end
