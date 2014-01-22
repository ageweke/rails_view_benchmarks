class Views::Benchmark::PartialHell::Fortitude::PartialG < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialF.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialF.new(:value => value)
  end
end
