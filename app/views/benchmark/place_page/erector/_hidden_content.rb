class HiddenContent < Erector::Widget
  def content
    div :id => 'hidden-content' do
      div :class => 'modal_window hide fade event_modal_container new_event_form', 'data-backdrop' => 'static', 'data-keyboard' => 'false', :id => 'event_form_modal', :title => 'i18n_events_add_new' do
        header :class => 'modal_header' do
          h3 :class => 'modal_title clearfix' do
            span :class => 'title_text' do
              text 'i18n_events_add_new'
            end
            a :class => 'modal_close', 'data-dismiss' => 'modal', :href => '#' do
              rawtext t('buttons.cancel')
            end
          end
        end
        div :class => 'modal_body' do
          rawtext render(:partial => "#{@partial_base}/create_event_form", :locals => { :user => user })
        end
        footer :class => 'modal_footer' do
          div :class => 'ajax_loading_container' do
          end
          a(:class => 'action_button button prev_page disabled_until_load', :href => '#', :id => '73cf55f0f71f06a51d5ff1b5a66ca1cf8201ffc5', :title => (t('hidden_content.back'))) do
            rawtext t('hidden_content.back')
          end
          script :type => 'text/javascript' do
            text '//'
            rawtext '<![CDATA[
  (function () {
    var button = $("#73cf55f0f71f06a51d5ff1b5a66ca1cf8201ffc5");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
          end
          a(:class => 'primary_action_button button submit_btn new_submit_btn disabled_until_load', :href => '#', :id => '7f1998f6b3b3f70801ebb84a23493e5b900fdf37', :title => (t('hidden_content.save_event'))) do
            rawtext t('hidden_content.save_event')
          end
          script :type => 'text/javascript' do
            text '//'
            rawtext '<![CDATA[
  (function () {
    var button = $("#7f1998f6b3b3f70801ebb84a23493e5b900fdf37");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
          end
          a(:class => 'primary_action_button button next_page disabled_until_load', :href => '#', :id => 'a61726a26c5837d2081a322e322d6bbeeef98142', :title => (t('hidden_content.next'))) do
            rawtext t('hidden_content.next')
          end
          script :type => 'text/javascript' do
            text '//'
            rawtext '<![CDATA[
  (function () {
    var button = $("#a61726a26c5837d2081a322e322d6bbeeef98142");
    button.on("click", function (e) { e.preventDefault(); });
    $.subscribe("jsload", function () {
      button.removeClass("disabled_until_load");
    });
  })();
// ]]>'
          end
        end
      end
      div(:class => 'modal_window hide fade other_events_modal past_events_modal', :id => 'past_events_modal', :title => (t('hidden_content.past_events'))) do
        header :class => 'modal_header' do
          h3 :class => 'modal_title clearfix' do
            span :class => 'title_text' do
              rawtext t('hidden_content.past_events')
            end
            a :class => 'modal_close', 'data-dismiss' => 'modal', :href => '#' do
              rawtext t('buttons.cancel')
            end
          end
        end
        div :class => 'modal_body' do
          img :class => 'ajax_loading', :src => '/assets/loading_loop.gif'
        end
        footer :class => 'modal_footer' do
          text ' '
        end
      end
      div :class => 'modal_window hide fade', :id => 'alert_modal' do
        header :class => 'modal_header' do
          a :class => 'modal_close', 'data-dismiss' => 'modal', :href => '#' do
            rawtext t('buttons.cancel')
          end
        end
        div :class => 'modal_body' do
        end
      end
    end
  end
  div :id => 'preloaded_ajax_loading_container' do
    div :class => 'ajax_loading_loop' do
    end
    a :class => 'action_button button loading', :href => '#' do
    end
  end
  end
end
