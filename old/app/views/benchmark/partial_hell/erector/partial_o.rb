class Views::Benchmark::PartialHell::Erector::PartialO < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialN.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialN.new(:value => @value)
  end
end
