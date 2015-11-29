# require 'bundler/setup'
require 'irb'

class Turbo::Cli::ConsoleCommand < Clamp::Command

  def execute
    IRB.start
  end
end
