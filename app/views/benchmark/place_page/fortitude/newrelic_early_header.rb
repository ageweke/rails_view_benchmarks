class Views::Benchmark::PlacePage::Fortitude::NewrelicEarlyHeader < Views::Benchmark::PlacePage::Fortitude::Base
  def content
    script :type => 'text/javascript' do
      rawtext 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
    end
    script :type => 'text/javascript' do
      rawtext 'var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);'
    end
  end
end
