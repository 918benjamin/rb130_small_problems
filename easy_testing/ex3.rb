# Write a minitest assertion that will fail if value is not nil.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'file_to_test'

class NilTest < MiniTest::Test
  def setup
    value = nil
  end

  def test_nil
    assert_nil(value)
  end
end