class Views::Benchmark::PartialHell::Fortitude::PartialE < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialD.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialD.new(:value => value)
  end
end
