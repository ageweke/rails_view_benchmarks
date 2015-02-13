module RailsViewBenchmarks
  class ConfiguredRailsServer
    def initialize(all_servers_base, rails_version, templating_engine, benchmark)
      @all_servers_base = all_servers_base
      @rails_version = rails_version
      @templating_engine = templating_engine
      @benchmark = benchmark
    end

    def configure!
      @configured ||= begin
        @rails_server ||= ::OopRailsServer::RailsServer.new(
          :name => 'benchmarker', :template_paths => [ ], :runtime_base_directory => runtime_base_directory,
          :rails_version => rails_version, :rails_env => :production,
          :additional_gemfile_lines => templating_engine.additional_gemfile_lines)

        templating_engine.configure!(rails_server.rails_root)

        @generator ||= ::RailsViewBenchmarks::Generators::Base.get(templating_engine, benchmark, rails_root)
        @generator.generate!

        true
      end
    end

    private
    attr_reader :all_servers_base, :rails_version, :templating_engine, :benchmark

    def runtime_base_directory
      @runtime_base_directory ||= begin
        out = File.join(all_servers_base, benchmark.subpath, templating_engine.subpath)
        FileUtils.mkdir_p(out)
        out
      end
    end
  end
end
