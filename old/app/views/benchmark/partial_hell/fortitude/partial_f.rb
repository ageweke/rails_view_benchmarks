class Views::Benchmark::PartialHell::Fortitude::PartialF < Fortitude::Widgets::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialE.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialE.new(:value => value)
  end
end
