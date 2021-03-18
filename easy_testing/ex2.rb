# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'file_to_test'

class TestDowncase < MiniTest::Test
  def setup
    value = XYZ
  end

  def test_downcase
    assert_equal('xyz', value.downcase)
  end
end