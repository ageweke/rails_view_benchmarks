class Views::Benchmark::PartialHell::Fortitude::PartialH < Fortitude::Widgets::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialG.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialG.new(:value => value)
  end
end
