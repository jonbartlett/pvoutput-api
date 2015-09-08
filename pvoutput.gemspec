# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pvoutput/version'

Gem::Specification.new do |spec|
  spec.name          = "pvoutput"
  spec.version       = Pvoutput::VERSION
  spec.authors       = ["Jon Bartlett"]
  spec.email         = ["mail@jaybe.net <mailto:mail@jaybe.net>"]

  spec.summary       = %q{Gem to wrap PVOutput.org API}
  spec.description   = %q{Gem to wrap PVOutput.org API}
  spec.homepage      = "https://github.com/jonbartlett/pvoutput"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

end
