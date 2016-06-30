require './test/test_helper'
require './lib/pvoutput-api'

class PVOutputStatisticTest < MiniTest::Test
  def setup
    @pvo_auth = PVOutput::Auth.new('8313', 'dc31fc56cff51f')
  end

  def test_exists
    assert PVOutput::Statistic
  end

  def test_class_instantiated
    @statistic = PVOutput::Statistic.new({})
    assert_instance_of PVOutput::Statistic, @statistic
  end

  def test_api_returns_data
    VCR.use_cassette('one_statistic') do
      stat_data = PVOutput::Statistic.fetch("20150622", "20150622", @pvo_auth)
      assert_equal PVOutput::Statistic, stat_data.class

      # check that fields accessible
      assert_equal "34651", stat_data.energy_consumed
      assert_equal "9.61", stat_data.debit_amount
    end
  end
end
