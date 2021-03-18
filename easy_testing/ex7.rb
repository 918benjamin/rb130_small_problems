# Write a minitest assertion that will fail if value is not an instance of the
# Numeric class exactly. value may not be an instance of one of Numeric's superclasses.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'file_to_test'

class TypeAssertions < MiniTest::Test
  def setup
    @value = 1
  end

  def test_numeric
    assert_equal(Numeric, @value.class)
    assert_instance_of(Numeric, @value)
  end
end