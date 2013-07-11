# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/embertools/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-embertools"
  spec.version       = Guard::EmberToolsVersion::VERSION
  spec.authors       = ["Brad Humphrey"]
  spec.email         = ["brad@instructure.com"]
  spec.description   = 'Guard::EmberTools automatically recompiles the ember application when changes are made'
  spec.summary       = 'Guard gem for ember tools'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'guard'
  spec.add_dependency 'colorize'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
