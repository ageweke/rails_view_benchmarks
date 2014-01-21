class Views::Benchmark::PartialHell::Erector::PartialM < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialL.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialL.new(:value => @value)
  end
end
