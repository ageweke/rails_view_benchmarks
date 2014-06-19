class Views::Benchmark::PartialHell::Fortitude::PartialN < Fortitude::Widgets::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialM.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialM.new(:value => value)
  end
end
