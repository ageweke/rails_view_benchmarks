class Views::Benchmark::PlacePage::Erector::HeaderGaJavascript < Erector::Widget
  def content
    script :type => 'text/javascript' do
      rawtext <<-EOS
      var _gaq = _gaq || [];
          _gaq.push([\'_setAccount\', \'UA-458260-1\']);
          _gaq.push([\'_setDomainName\', \'couchsurfing.org\']);
          _gaq.push([\'_trackPageview\']);

          (function() {
            var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;
            ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';
            var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);
          })();
EOS
    end
  end
end
