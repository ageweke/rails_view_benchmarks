class Views::Benchmark::PartialHell::Erector::PartialC < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialB.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialB.new(:value => @value)
  end
end
