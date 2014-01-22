class Views::Benchmark::PartialHell::Fortitude::PartialA < Fortitude::Widget
  needs :value
  def content
    b { text value }
    text "
"
  end
end
