class Views::Benchmark::PartialHell::Fortitude::PartialJ < Fortitude::Widgets::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialI.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialI.new(:value => value)
  end
end
