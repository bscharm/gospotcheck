# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gospotcheck/version'

Gem::Specification.new do |spec|
  spec.name          = 'gospotcheck'
  spec.version       = Gospotcheck::VERSION
  spec.authors       = ['Graham McBain', 'Lindsay Recknell', 'Brad Scharmann', 'Luke McComb']
  spec.email         = ["bscharm@gmail.com\n"]
  spec.summary       = 'Go Spot Check API gem'
  spec.description   = 'Ruby wrapper for the goSpotcheck API written by a couple of plucky gSchoolers'
  spec.homepage      = "http://github.com/bscharm/gospotcheck"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.6', '>= 1.6.3'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0.0', '>= 3.0.0'
  spec.add_development_dependency 'pry', '~> 0.10.1', '>= 0.10.1'
  spec.add_development_dependency 'pry-byebug', '~> 2.0.0', '>= 2.0.0'

  spec.add_runtime_dependency 'faraday', '~> 0.9.0', '>= 0.9.0'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.8', '>= 0.8.0'
  spec.add_runtime_dependency 'simple_oauth', '~>0.2', '>= 0.2.0'

end
