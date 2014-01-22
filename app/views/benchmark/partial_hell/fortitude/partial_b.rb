class Views::Benchmark::PartialHell::Fortitude::PartialB < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialA.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialA.new(:value => value)
  end
end
