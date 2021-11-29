require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  attr_accessor :register1, :transaction1
  def setup
    @register1 = CashRegister.new(100)
    @transaction1 = Transaction.new(15)
  end
  
  def test_accept_money
    previous_amount = register1.total_money
    transaction1.amount_paid = 20
    register1.accept_money(transaction1)
    current_amount = register1.total_money
    
    assert_equal(previous_amount + 20, current_amount)
  end
  
  def test_change
    transaction1.amount_paid = 20
    assert_equal(5, register1.change(transaction1))
  end
  
  def test_receipt
    assert_output("You've paid $#{15}.\n") { register1.give_receipt(transaction1)}
  end
  
  def test_item_cost
    assert_equal(15, transaction1.item_cost)
  end
end