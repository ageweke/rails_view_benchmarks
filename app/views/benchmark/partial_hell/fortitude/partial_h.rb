class Views::Benchmark::PartialHell::Fortitude::PartialH < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialG.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialG.new(:value => value)
  end
end
