require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def test_accept_money
    register = CashRegister.new(250)
    transaction = Transaction.new(25)
    transaction.amount_paid = 25
    register.accept_money(transaction)
    assert_equal 275, register.total_money
  end

  def test_change
    register = CashRegister.new(1000)
    transaction = Transaction.new(25)
    transaction.amount_paid = 30
    change = register.change(transaction)
    assert_equal 5, change
  end
end