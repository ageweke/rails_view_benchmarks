class Views::Benchmark::PartialHell::Fortitude::PartialA < Fortitude::Widget
  needs :value
  def content
    b { text value }
    text "\n".freeze
  end
end
