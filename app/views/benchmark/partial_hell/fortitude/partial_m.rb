class Views::Benchmark::PartialHell::Fortitude::PartialM < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialL.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialL.new(:value => value)
  end
end
