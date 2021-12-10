## 1 What are regression tests and why are they useful?

## 2 Define an Assertion, Test, and Test Suite

## 3 Compare and Contrast RSpec and Minitest

## 4 - 5 What is SEAT?

## 6 What happens specifically in the set up and tear down steps?

## 7 What method does assert_equal use?

## 8 What do you need to do to run minitest? (What do you need to include on the test file?)

## 9 -14 Define these common assertions and how to use them
# assert
# assert_match
# assert_raises
# refute
# assert_equal

## 10 
## 11
## 12 Will test_is_not_purrier pass or fail or have an error?
# You update the initialize method of your Cat class to take a second argument and assign it to a @purr_factor instance variable. You also add an equivalent attr_accessor.
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def miaow
    "#{name} is miaowing."
  end
end

class CatTest < MiniTest::Test
  def setup
    @kitty = Cat.new('Kitty')
  end

  def test_is_cat; end

  def test_name; end

  def test_miaow; end

  def test_raises_error; end
    
  def test_is_not_purrier
    patch = Cat.new('Patch', 5)
    milo = Cat.new('Milo', 3)
  
    refute(patch.purr_factor > milo.purr_factor)
  end
end


## 13 What does this output mean?
# CatTest .FS.

## 14 Given the following output what implementation of #test_name assertion would produce this output?
#   1) Failure:
# CatTest#test_name [minitest_test.rb:21]:
# Expected: "Milo"
#   Actual: "Kitty"
  
## 15 What is code coverage?
