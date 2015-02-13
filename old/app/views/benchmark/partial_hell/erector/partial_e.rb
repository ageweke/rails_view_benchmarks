class Views::Benchmark::PartialHell::Erector::PartialE < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialD.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialD.new(:value => @value)
  end
end
