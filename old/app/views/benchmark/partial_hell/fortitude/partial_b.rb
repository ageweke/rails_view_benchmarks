class Views::Benchmark::PartialHell::Fortitude::PartialB < Fortitude::Widgets::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialA.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialA.new(:value => value)
  end
end
