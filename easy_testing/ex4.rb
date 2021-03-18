# Write a minitest assertion that will fail if the Array list is not empty.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'file_to_test'

class ArrayTest << MiniTest::Test
  def setup
    @list = [1, 2, 3]
  end

  def test_array_not_empty
    assert_equal(true, @list.empty?)
    assert_empty(@list)
  end
end