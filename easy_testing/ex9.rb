# Write a test that will fail if list and the return value of list.process are
# different objects.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'file_to_test'

class SameObject < MiniTest::Test
  def setup
    list = [1, 2, 3]
  end

  def test_sameness
    assert_same(list, list.process)
  end
end