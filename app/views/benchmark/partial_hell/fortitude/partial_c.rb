class Views::Benchmark::PartialHell::Fortitude::PartialC < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialB.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialB.new(:value => value)
  end
end
