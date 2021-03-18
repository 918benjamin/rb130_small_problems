# Write a test that will fail if 'xyz' is one of the elements in the Array list:

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'file_to_test'

class ElementOfList < MiniTest::Test
  def setup
    value = 'xyz'
    list = [123, value, 'abc']
  end

  def test_element_of_list
    refute_includes(list, value)
  end
end