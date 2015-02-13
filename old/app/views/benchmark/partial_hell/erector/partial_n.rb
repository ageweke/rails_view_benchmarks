class Views::Benchmark::PartialHell::Erector::PartialN < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialM.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialM.new(:value => @value)
  end
end
