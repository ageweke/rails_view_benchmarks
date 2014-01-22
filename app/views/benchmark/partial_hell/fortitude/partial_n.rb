class Views::Benchmark::PartialHell::Fortitude::PartialN < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialM.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialM.new(:value => value)
  end
end
