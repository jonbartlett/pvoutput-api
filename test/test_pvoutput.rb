require './test/test_helper'
require './lib/pvoutput'

class TestPvoutput < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PVOutput::VERSION
  end

#  def test_it_does_something_useful
#    assert false
#  end
end
