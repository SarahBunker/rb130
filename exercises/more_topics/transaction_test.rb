require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

# require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  attr_accessor :transaction1
  def setup
    # @register1 = CashRegister.new(100)
    @transaction1 = Transaction.new(15)
  end
  
  def test_item_cost
    assert_equal(15, transaction1.item_cost)
  end
  
  def test_prompt_payment_output
    input = StringIO.new("30\n")
    output = StringIO.new
    transaction1.prompt_for_payment(input: input, output: output)
    assert_equal(30, transaction1.amount_paid)
  end
  
end