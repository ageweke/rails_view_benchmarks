class Views::Benchmark::Base < Views::Base
  include PlacePageHelper

  def t(x, opts = { })
    I18n.t(x, opts)
  end
end
