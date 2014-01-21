class Views::Benchmark::PartialHell::Erector::PartialB < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialA.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialA.new(:value => @value)
  end
end
