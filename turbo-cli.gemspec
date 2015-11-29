# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turbo/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "turbo-cli"
  spec.version       = Turbo::Cli::VERSION
  spec.authors       = ["Dave Jackson"]
  spec.email         = ["dave.jackson@stealthstartuplabs.com"]

  spec.summary       = %q{Agile App Studio command line tool.}
  spec.description   = %q{Agile App Studio command line tool.}
  spec.homepage      = "http://www.agileappstudio.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'excon'
  spec.add_runtime_dependency 'colorize'
  spec.add_runtime_dependency 'clamp'
  spec.add_runtime_dependency 'highline'
  spec.add_runtime_dependency 'shell-spinner'
end
