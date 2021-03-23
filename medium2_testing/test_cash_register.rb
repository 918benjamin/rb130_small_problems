require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @register = CashRegister.new(500)
    @transaction = Transaction.new(50)
  end

  def test_accept_money
    assert_equal(500, @register.total_money)
    @transaction.amount_paid += @transaction.item_cost
    @register.accept_money(@transaction)
    assert_equal(550, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = 75
    change = @register.change(@transaction)
    assert_equal(25, change)
  end

  def test_give_receipt
    assert_output("You've paid $50.\n") { @register.give_receipt(@transaction) }
  end
end