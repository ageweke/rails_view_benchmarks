class Views::Benchmark::PartialHell::Erector::PartialA < Erector::Widget
  def content
    b { text @value }
    text "
"
  end
end
