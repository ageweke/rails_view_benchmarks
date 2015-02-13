class Views::Benchmark::PartialHell::Erector::PartialF < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialE.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialE.new(:value => @value)
  end
end
