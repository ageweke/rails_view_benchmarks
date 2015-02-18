class Views::Benchmark::NewrelicEarlyHeader < Erector::Widget
  def content
    script :type => 'text/javascript' do
      rawtext 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
    end
    script :type => 'text/javascript' do
      rawtext 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
    end
  end
end
