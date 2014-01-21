class Views::Benchmark::PartialHell::Erector::PartialG < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialF.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialF.new(:value => @value)
  end
end
