class Views::Benchmark::PartialHell::Fortitude::PartialA < Fortitude::Widgets::Html5
  needs :value
  def content
    b { text value }
    text "\n".freeze
  end
end
