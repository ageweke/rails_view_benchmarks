class Views::Benchmark::PartialHell::Fortitude::PartialA < Fortitude::Widget::Html5
  needs :value
  def content
    b { text value }
    text "\n".freeze
  end
end
