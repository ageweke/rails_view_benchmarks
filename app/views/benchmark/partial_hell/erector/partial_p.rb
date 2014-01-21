class Views::Benchmark::PartialHell::Erector::PartialP < Erector::Widget
  def content
    widget Views::Benchmark::PartialHell::Erector::PartialO.new(:value => @value)
    widget Views::Benchmark::PartialHell::Erector::PartialO.new(:value => @value)
  end
end
