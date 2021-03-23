require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def setup
    @transaction = Transaction.new(50)
    @input = StringIO.new("75\n")
    @output = StringIO.new
  end

  def test_prompt_for_payment
    @transaction.prompt_for_payment(input: @input, output: @output)
    assert_equal(75, @transaction.amount_paid)
  end
end