require_relative 'version'

class Turbo::Cli::VersionCommand < Clamp::Command

  def execute
    puts Turbo::Cli::VERSION
  end
end
