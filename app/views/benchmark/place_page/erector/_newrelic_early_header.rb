class Views::Benchmark::PlacePage::Erector::NewrelicEarlyHeader < Erector::Widget
  def content
    script :type => 'text/javascript' do
      text 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
    end
    script :type => 'text/javascript' do
      text 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
    end
  end
end
