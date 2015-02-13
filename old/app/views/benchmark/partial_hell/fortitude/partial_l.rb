class Views::Benchmark::PartialHell::Fortitude::PartialL < Fortitude::Widgets::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialK.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialK.new(:value => value)
  end
end
