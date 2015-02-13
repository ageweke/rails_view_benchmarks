class Views::Benchmark::PlacePage::Erector::FooterJavascript < Erector::Widget
  attr_reader :place, :user

  def content
    script do
      text 'if(typeof CSDataTransfer===\'undefined\'){ CSDataTransfer = {}; } CSDataTransfer._place = {"id":'
      text place.id
      text ',"path":"'
      text place.path.html_safe
      text '"};'
    end
    script do
      text 'if(typeof CSDataTransfer===\'undefined\'){ CSDataTransfer = {}; } CSDataTransfer._currentUser = {"loggedIn":true,"siteLocale":"'
      text user.locale
      text '","defaultMainImage":"https://d20rrv4k3o7n66.cloudfront.net/n/image/serve/P/3/C-60-60?sh=aSWzKD3rV9tx7Sgcls-NJQ","uncompletedTasksTotal":0,"id":'
      text user.id
      text ',"mainImage":"'
      rawtext cdn(user.profile_image)
      text '","homePlace":{"id":'
      text user.id
      text ',"bounds":{"north":38.134705869495,"south":37.397699228207,"east":-121.966992743653,"west":-123.028393432128}},"livePlaceSlug":"'
      rawtext user.live_place_slug
      text '","identityVerified":false,"html5Position":{"coords":{"latitude":37.8157899,"longitude":-122.2442352},"place":{"id":'
      text place.id
      text ',"path":"/n/places/'
      rawtext user.live_place_slug
      text '"},"timestamp":1389477469107},"slug":"'
      text user.username
      text '","html5GeolocationPermission":"yes","html5Position":{"coords":{"latitude":37.8157899,"longitude":-122.2442352},"place":{"id":'
      text place.id
      text ',"path":"/n/places/'
      text user.live_place_slug
      text '"},"timestamp":1389477469107}};'
    end
    script(:src => (cdn('/assets/old_site-ad61f0931eedf7dae3548eea9ab2715c.js')), :type => 'text/javascript') do
    end
    script :type => 'text/javascript' do
      text '//'
      rawtext '<![CDATA[
$(document).ready(function() {
  CS.Tracking.addGlobalTrackingProperties({"distinct_id":"cstrk:user-v1:<%= user.id %>'
      rawtext '","referring_page":"dashboard#index","current_page":"places#show","unique_browser_id":"5202000A8DABBF50852D3C0402F91B03","unique_browser_id_source":"uid_got","user_verification_status":"not_verified","user_couch_status":"no","user_has_profile_photo":true,"user_facebook_connected":true,"user_age":44,"user_sex":"male","user_live_location_full":"San Francisco, California, United States","user_live_city":"San Francisco","user_live_state":"California","user_live_country":"United States","user_live_latitude":"37.7749295","user_live_longitude":"-122.4194155","user_joined_date":"2011-09-13T15:01:56Z"});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_logo_clicked_1", "nav_logo_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_profile_clicked_1", "nav_profile_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_account_settings_clicked_1", "nav_account_settings_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_place_page_clicked_1", "nav_place_page_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_log_out_clicked_1", "nav_log_out_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_couchrequests_clicked_1", "nav_couchrequests_clicked", {"unread_couchrequest_count":0});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_messages_clicked_1", "nav_messages_clicked", {"unread_message_count":24});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_home_clicked_1", "nav_home_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_trips_clicked_1", "nav_trips_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_host_clicked_1", "nav_host_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_events_clicked_1", "nav_events_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_groups_clicked_1", "nav_groups_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_nav_help_clicked_1", "nav_help_clicked", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_1", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"verified","clicked_user_couch_status":"no","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":true,"clicked_user_age":35,"clicked_user_sex":"male","clicked_user_live_location_full":"Sao Paulo, S\u00e3o Paulo, Brazil","clicked_user_live_city":"Sao Paulo","clicked_user_live_state":"S\u00e3o Paulo","clicked_user_live_country":"Brazil","clicked_user_live_latitude":"-23.5489433","clicked_user_live_longitude":"-46.6388182","clicked_user_joined_date":"2006-11-25T05:57:52Z","display_sequence":1,"target":"link"});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_2", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"no","clicked_user_facebook_connected":false,"clicked_user_age":37,"clicked_user_sex":"female","clicked_user_live_location_full":"Marseille, Provence-Alpes-C\u00f4te d\'Azur, France","clicked_user_live_city":"Marseille","clicked_user_live_state":"Provence-Alpes-C\u00f4te d\'Azur","clicked_user_live_country":"France","clicked_user_live_latitude":"43.296482","clicked_user_live_longitude":"5.36978","clicked_user_joined_date":"2013-07-02T16:52:52Z","display_sequence":2,"target":"link"});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_3", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"maybe","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":true,"clicked_user_age":20,"clicked_user_sex":"female","clicked_user_live_location_full":"Gold Coast, Queensland, Australia","clicked_user_live_city":"Gold Coast","clicked_user_live_state":"Queensland","clicked_user_live_country":"Australia","clicked_user_live_latitude":"-28.0172605","clicked_user_live_longitude":"153.4256987","clicked_user_joined_date":"2012-10-03T13:56:56Z","display_sequence":3,"target":"link"});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_4", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"yes","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":true,"clicked_user_age":21,"clicked_user_sex":"male","clicked_user_live_location_full":"Gravata\u00ed, Rio Grande do Sul, Brazil","clicked_user_live_city":"Gravata\u00ed","clicked_user_live_state":"Rio Grande do Sul","clicked_user_live_country":"Brazil","clicked_user_live_latitude":"-29.9357237","clicked_user_live_longitude":"-51.0165907","clicked_user_joined_date":"2012-10-18T15:05:40Z","display_sequence":4,"target":"link"});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_5", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"verified","clicked_user_couch_status":"maybe","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":false,"clicked_user_age":58,"clicked_user_sex":"several_people","clicked_user_live_location_full":"Holstebro, Central Denmark Region, Denmark","clicked_user_live_city":"Holstebro","clicked_user_live_state":"Central Denmark Region","clicked_user_live_country":"Denmark","clicked_user_live_latitude":"56.361534","clicked_user_live_longitude":"8.621727","clicked_user_joined_date":"2010-06-06T16:36:21Z","display_sequence":5,"target":"link"});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_ocr_6", "place_ocrs_clicked_ocr", {"clicked_user_verification_status":"not_verified","clicked_user_couch_status":"maybe","clicked_user_has_profile_photo":true,"clicked_user_facebook_connected":false,"clicked_user_age":24,"clicked_user_sex":"male","clicked_user_live_location_full":"Birmingham, England, United Kingdom","clicked_user_live_city":"Birmingham","clicked_user_live_state":"England","clicked_user_live_country":"United Kingdom","clicked_user_live_latitude":"52.486243","clicked_user_live_longitude":"-1.890401","clicked_user_joined_date":"2013-05-15T20:27:12Z","display_sequence":6,"target":"link"});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_ocrs_clicked_more_1", "place_ocrs_clicked_more", {});
CS.Tracking.trackClicks("#autogen_id_for_tracking_place_sidebar_meet_people_button_clicked_1", "place_sidebar_meet_people_button_clicked", {});
});

        $(function () {
          $(\'input[placeholder], textarea[placeholder]\').placeholder();
        });

// ]]>'
    end
    script :type => 'text/javascript' do
      text 'if (!NREUMQ.f) { NREUMQ.f=function() {
NREUMQ.push(["load",new Date().getTime()]);
var e=document.createElement("script");
e.type="text/javascript";
e.src=(("http:"===document.location.protocol)?"http:":"https:") + "//" +
  "js-agent.newrelic.com/nr-100.js";
document.body.appendChild(e);
if(NREUMQ.a)NREUMQ.a();
};
NREUMQ.a=window.onload;window.onload=NREUMQ.f;
};
NREUMQ.push(["nrfj","beacon-6.newrelic.com","062bd2eae9","1081567","d1lWQRdaWlVdFxdJWVVVXUZKRl5WTw==",0,1637,new Date().getTime(),"","","","",""]);'
    end
    script :type => 'text/javascript' do
      text 'if (!NREUMQ.f) { NREUMQ.f=function() {
NREUMQ.push(["load",new Date().getTime()]);
var e=document.createElement("script");
e.type="text/javascript";
e.src=(("http:"===document.location.protocol)?"http:":"https:") + "//" +
  "js-agent.newrelic.com/nr-100.js";
document.body.appendChild(e);
if(NREUMQ.a)NREUMQ.a();
};
NREUMQ.a=window.onload;window.onload=NREUMQ.f;
};
NREUMQ.push(["nrfj","beacon-6.newrelic.com","062bd2eae9","1081567","d1lWQRdaWlVdFxdJWVVVXUZKRl5WTw==",0,1645,new Date().getTime(),"","","","",""]);'
    end
  end
end
