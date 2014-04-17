class Views::Benchmark::PlacePage::Fortitude::Base < Fortitude::Widget::Html5
  include ErbPlacePageHelper

  def t(x, opts = { })
    I18n.t(x, opts)
  end

  class << self
    def static_if_desired(*names)
      if (ENV['FORTITUDE_ENABLE_STATIC'] || 'false') =~ /^(true|on|yes|1)$/i
        static *names
      end
    end
  end
end
