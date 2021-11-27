require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class NoExperienceError < StandardError; end

class Human; end

class Employee < Human
  attr_accessor :list
  def hire
    raise NoExperienceError
  end
end

class Cook < Employee; end

class BasicTest < MiniTest::Test
  attr_reader :employee, :cook, :list2
  
  def setup
    @employee = Employee.new
    @cook = Cook.new
    @list2 = ["bake", "clean"]
    employee.list = list2
  end
  
  def test_boolean_assertions
    value = 3
    assert(value.odd?, "value is not odd")
  end
  
  def test_equality
    value = "XYZ"
    assert_equal("xyz", value.downcase)
  end
  
  def test_nil
    value = nil
    assert_nil(value)
  end
  
  def test_empty
    list = []
    assert_empty(list)
  end
  
  def test_include
    list = [1,2,'xyz']
    assert_includes(list, 'xyz')
  end
  
  def test_exception
    assert_raises NoExperienceError do
      employee.hire
    end
  end
  
  def test_type
    assert_instance_of(Employee, employee)
  end
  
  def test_kind
    assert_kind_of(Employee, cook)
  end
  
  def test_same
    assert_same(list2, employee.list)
  end
  
  def test_refute
    refute_includes(list2, "calculate")
  end
end