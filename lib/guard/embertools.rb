require 'guard'
require 'guard/guard'

module Guard
  class EmberTools < Guard
    require 'colorize'

    def initialize(watchers = [], options = {})
      super
      @options = {
          :debug => false,
          :no_cleanup => false,
          :out_file => nil
      }.merge(options)
    end

    def run_all
      compile_ember
    end

    def run_on_changes(path)
      puts "detected changes in #{path.join(', ')}".yellow
      compile_ember
    end

    def  compile_ember
      command = "ember build #{generate_cl_arguments}"
      puts command
      puts `#{command}`
    end

    def generate_cl_arguments
      args = []
      args << "-d" if @options[:debug]
      args << "-c" if @options[:no_cleanup]
      args << "--out-file #{@options[:out_file]}" if @options[:out_file]
      args.join(' ')
    end
  end
end
