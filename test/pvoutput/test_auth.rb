require './test/test_helper'
require './lib/pvoutput/auth'

class PVOutputAuthTest < MiniTest::Test
  def setup
    @auth = PVOutput::PVAuth.new('8313', 'dc31fc56cff51f')
  end

  def test_exists
    assert PVOutput::PVAuth
  end

  def test_class_instantiated
    assert_instance_of PVOutput::PVAuth, @auth 
  end

end

