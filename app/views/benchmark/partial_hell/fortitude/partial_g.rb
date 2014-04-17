class Views::Benchmark::PartialHell::Fortitude::PartialG < Fortitude::Widget::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialF.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialF.new(:value => value)
  end
end
