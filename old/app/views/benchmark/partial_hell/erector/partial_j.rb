class Views::Benchmark::PartialHell::Erector::PartialJ < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialI.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialI.new(:value => @value)
  end
end
