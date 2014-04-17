class Views::Benchmark::PartialHell::Fortitude::PartialM < Fortitude::Widget::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialL.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialL.new(:value => value)
  end
end
