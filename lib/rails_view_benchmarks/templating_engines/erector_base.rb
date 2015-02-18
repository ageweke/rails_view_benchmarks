require 'rails_view_benchmarks/templating_engines/base'

module RailsViewBenchmarks
  module TemplatingEngines
    class ErectorBase < ::RailsViewBenchmarks::TemplatingEngines::Base
      def configure!(c)
        c.append_to_file c.rails_root_path, 'config/application.rb', <<-EOS
::Rails.application.config.autoload_paths << "\#{::Rails.application.config.root}/app"
EOS

        c.rails_root_file 'config/initializers/erector.rb', <<-EOS
Erector::Widget.prettyprint_default = #{(!! configuration[:prettyprint]).inspect}
EOS

        c.rails_root_file 'app/views/base.rb', <<-EOS
class ::Views::Base < ::Erector::Widget
end
EOS
      end

      def view_file_extension
        '.rb'
      end
    end
  end
end
