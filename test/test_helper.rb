#$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'minitest/autorun'
require 'minitest/reporters'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = "test/fixtures"
  c.hook_into :webmock
end


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # spec-like progress
