class Views::Benchmark::PartialHell::Fortitude::PartialI < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialH.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialH.new(:value => value)
  end
end
