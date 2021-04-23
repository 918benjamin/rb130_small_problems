# require 'simplecov'
# SimpleCov.start
require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(25)
    input = StringIO.new("40\n")
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal(40, transaction.amount_paid)
  end
end