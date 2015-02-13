class Views::Benchmark::PartialHell::Erector::PartialL < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialK.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialK.new(:value => @value)
  end
end
