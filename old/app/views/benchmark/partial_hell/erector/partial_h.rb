class Views::Benchmark::PartialHell::Erector::PartialH < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialG.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialG.new(:value => @value)
  end
end
