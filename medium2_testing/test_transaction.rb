require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def setup
    @transaction = Transaction.new(50)
    @input1 = StringIO.new("30\n")
    @input2 = StringIO.new("75\n")
    @input3 = StringIO.new("Hi\n")
  end

  def test_prompt_for_payment
    @transaction.prompt_for_payment(input: @input2)
    assert_equal(75, @transaction.amount_paid)
  end
end