class Views::Benchmark::PartialHell::Erector::PartialK < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialJ.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialJ.new(:value => @value)
  end
end
