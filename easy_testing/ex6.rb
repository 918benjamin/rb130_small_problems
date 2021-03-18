# Write a minitest assertion that will fail unless employee.hire raises a
# NoExperienceError exception.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use

require_relative 'file_to_test'

class ExceptionTest < MiniTest::Test
  def setup
    @employee = Employee.new
  end

  def test_no_experience_error
    assert_raises(NoExperienceError) { @employee.hire }
  end
end