class Views::Benchmark::PartialHell::Erector::PartialD < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialC.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialC.new(:value => @value)
  end
end
