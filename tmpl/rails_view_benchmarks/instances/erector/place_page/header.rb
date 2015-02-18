class Views::Benchmark::Header < Erector::Widget
  attr_reader :place, :user

  def content
    head do
      widget Views::Benchmark::NewrelicEarlyHeader.new
      meta :content => 'text/html;charset=UTF-8', 'http-equiv' => 'content-type'
      title do
        text place.title
        text '- Couchsurfing'
      end
      meta :content => 'authenticity_token', :name => 'csrf-param'
      meta :content => 'NIb6h37CJL+GGUrGEHsnV7OHi0ZPnhIqka3PVAXaPOE=', :name => 'csrf-token'
      meta :content => 'width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no', :name => 'viewport'
      link(:href => (cdn('/assets/global_manifest-7c3595129a107f6fde65b7837276c39e.css')), :media => 'all', :rel => 'stylesheet', :type => 'text/css')
      link(:href => (cdn('/assets/old_common-c8fe6e30f84afd66b13d694872c9b015.css')), :media => 'all', :rel => 'stylesheet', :type => 'text/css')
      rawtext '<!--[if IE 9]>'
      link(:href => (cdn('/assets/views/widgets/places/subnav_ie9-d03d06fe5d110558d25cfa1c5867e151.css')), :media => 'screen', :rel => 'stylesheet', :type => 'text/css')
      rawtext '<![endif]-->'
      rawtext '<!--[if lte IE 9]>'
      style :type => 'text/css' do
        text 'input.placeholder, textarea.placeholder { color: #AAA; }'
      end
      rawtext '<![endif]-->'
      rawtext '<!--[if lte IE 9]>'
      link(:href => (cdn('/assets/old_common_split2-f4c38a3984d08b450fea89aa126ca872.css')), :media => 'all', :rel => 'stylesheet', :type => 'text/css')
      rawtext '<![endif]-->'
      link(:href => (s3('/favicon.ico')), :rel => 'shortcut icon', :type => 'image/vnd.microsoft.icon')
      script :src => 'https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.js', :type => 'text/javascript' do
      end
      script :type => 'text/javascript' do
        text '//'
        rawtext <<-EOS
        <![CDATA[
          if (typeof jQuery === 'undefined') {
            document.write('<script type="text/javascript" src="/assets/jquery.js">'
        text '\');
            document.write(\'<\' + \'/\' + \'script>\');
          }

// ]]>
EOS
      end
      script(:src => (cdn('/assets/global-e0f624a2951c1b799a7b15960d3bf411.js')), :type => 'text/javascript') do
      end
      widget Views::Benchmark::HeaderMixpanelJavascript.new
      widget Views::Benchmark::HeaderMixpanelId.new(:user => user)
      widget Views::Benchmark::HeaderGaJavascript.new
    end
    meta(:content => ((place.title) + ' - Couchsurfing'), :property => 'og:title')
    meta :content => 'website', :property => 'og:type'
    meta(:content => ('https://www.couchsurfing.org/' + (place.path.html_safe)), :property => 'og:url')
    meta :content => 'Discover new friends around the world!', :property => 'og:description'
    cdn_img = cdn("/assets/share_icon-1f9b3cb3fe7434c4572905f8df9249e1.png?sh=_icJV-EO8S9rq7R8cgM6ag")
    meta :content => cdn_img, :property => 'og:image'
    meta :content => '818BFA93A51A3073F67BC14BC22B9CFF', :name => 'msvalidate.01'
  end
end
