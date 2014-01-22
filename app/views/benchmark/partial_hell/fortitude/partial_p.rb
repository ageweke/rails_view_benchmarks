class Views::Benchmark::PartialHell::Fortitude::PartialP < Fortitude::Widget
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialO.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialO.new(:value => value)
  end
end
