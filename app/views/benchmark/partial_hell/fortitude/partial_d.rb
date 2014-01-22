class Views::Benchmark::PartialHell::Fortitude::PartialD < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialC.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialC.new(:value => value)
  end
end
