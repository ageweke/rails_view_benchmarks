class HeaderMixpanelId < Erector::Widget
  def content
    script :type => 'text/javascript' do
      text 'mixpanel.identify("cstrk:user-v1:'
      rawtext user.id
      text '");
mixpanel.set_config({"cookie_expiration":3650});
mixpanel.name_tag("'
      rawtext user.name
      text '");'
    end
  end
end