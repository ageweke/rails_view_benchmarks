class Views::Benchmark::PartialHell::Erector::PartialI < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialH.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialH.new(:value => @value)
  end
end
