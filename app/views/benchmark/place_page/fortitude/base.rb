class Views::Benchmark::PlacePage::Fortitude::Base < Fortitude::Widget
  include ErbPlacePageHelper

  def t(x, opts = { })
    I18n.t(x, opts)
  end
end
