# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_status/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_status"
  spec.version       = ActsAsStatus::VERSION
  spec.authors       = ["kaka"]
  spec.email         = ["huxinghai1988@gmail.com"]
  spec.summary       = %q{model attribute state manage.}
  spec.description   = %q{model attribute state manage.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
