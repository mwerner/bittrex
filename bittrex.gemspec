# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bittrex/version'

Gem::Specification.new do |spec|
  spec.name          = "bittrex"
  spec.version       = Bittrex::VERSION
  spec.authors       = ["Matthew Werner"]
  spec.email         = ["m@mjw.io"]
  spec.summary       = %q{API Client for the Bittrex API}
  spec.description   = %q{API Client for the Bittrex API}
  spec.homepage      = "https://github.com/mwerner/bittrex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '>= 0.9.0'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "figaro"
end
