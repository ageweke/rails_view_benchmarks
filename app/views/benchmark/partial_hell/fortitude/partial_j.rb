class Views::Benchmark::PartialHell::Fortitude::PartialJ < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialI.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialI.new(:value => value)
  end
end