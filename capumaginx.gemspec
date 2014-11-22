# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capumaginx/version'

Gem::Specification.new do |spec|
  spec.name          = "capumaginx"
  spec.version       = Capumaginx::VERSION
  spec.authors       = ["Dylan C. Smith"]
  spec.email         = ["rh@izo.me"]
  spec.summary       = %q{Puma, nginx, monit configuration.}
  spec.description   = %q{All the stuff you need.}
  spec.homepage      = "http://rh.izo.me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard-rspec", "~> 4.0"

  spec.add_dependency("railties", ">= 3.2.6", "< 5")
end
