# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'file_to_test'

class IncludesTest < MiniTest::Test
  def setup
    array = ['xyz', 'abc']
  end

  def test_includes_xyz
    assert_includes(array, 'xyz')
  end
end