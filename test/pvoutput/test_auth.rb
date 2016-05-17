require './test/test_helper'
require './lib/pvoutput/auth'

class PVOutputAuthTest < MiniTest::Test
  def setup
    @auth = PVOutput::Auth.new('8313', 'dc31fc56cff51f')
  end

  def test_exists
    assert PVOutput::Auth
  end

  def test_class_instantiated
    assert_instance_of PVOutput::Auth, @auth 
  end

end

