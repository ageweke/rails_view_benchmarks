class Views::Benchmark::HeaderMixpanelId < Erector::Widget
  attr_reader :user

  def content
    script :type => 'text/javascript' do
      text 'mixpanel.identify("cstrk:user-v1:'
      text user.id
      text '");
mixpanel.set_config({"cookie_expiration":3650});
mixpanel.name_tag("'
      text user.name
      text '");'
    end
  end
end
