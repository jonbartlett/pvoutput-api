# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pvoutput-api/version'

Gem::Specification.new do |spec|
  spec.name          = "pvoutput-api"
  spec.version       = PVOutput::VERSION
  spec.authors       = ["Jon Bartlett"]
  spec.email         = ["mail@jaybe.net <mailto:mail@jaybe.net>"]

  spec.summary       = %q{pvoutput-api}
  spec.description   = %q{Gem to wrap PVOutput.org API}
  spec.homepage      = "https://github.com/jonbartlett/pvoutput-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.1"
  spec.add_development_dependency "guard", "~> 2.14"
  spec.add_development_dependency "guard-minitest", "~> 2.4"
  spec.add_development_dependency "minitest-reporters", "~> 1.1"

  spec.add_runtime_dependency "rest-client", "~> 1.8"

end
