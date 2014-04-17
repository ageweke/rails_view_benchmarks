class Views::Benchmark::PartialHell::Fortitude::PartialO < Fortitude::Widget::Html5
  needs :value

  def content
    widget Views::Benchmark::PartialHell::Fortitude::PartialN.new(:value => value)
    widget Views::Benchmark::PartialHell::Fortitude::PartialN.new(:value => value)
  end
end
