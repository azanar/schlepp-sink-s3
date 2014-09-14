# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schlepp-aws/version'

Gem::Specification.new do |spec|
  spec.name          = "schlepp-aws"
  spec.version       = Schlepp::AWS::VERSION
  spec.authors       = ["Ed Carrel"]
  spec.email         = ["edward@carrel.org"]
  spec.summary       = %q{AWS-specific transports for Schlepp}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'aws-sdk'
  spec.add_runtime_dependency 'schlepp'
  spec.add_runtime_dependency 'activesupport'

  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end