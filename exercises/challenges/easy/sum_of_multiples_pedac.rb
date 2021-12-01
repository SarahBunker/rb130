=begin
#-------------------------------------------------
PROBLEM:
given a set of numbers (defaults to 3 and 5) find the sum of all the multiples of the numbers in the set less then a given number

input:
#initialize(set of numbers) 
#to(a number)
output: integer representing the sum
mutating?
rules:
  Explicit requirements:
    multiples up to the given number
    set defaults to 3 and 5
  Implicit requirements:
    
Unclear parts of problem?
Edge cases?

input validations?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

class SumOfMultiples
class methods:
::to(limit)
call class method on an instance method

instance methods:
#initialize(set defaults to 3 and 5)
#to(limit)
initialize array of multiples to empty
iterate through set
  for each number in set
  mult = number
  loop while mult < limit
    add to array if mult is not in array of multiples
    mult = mult + number
sum array of multiples

probably want to ignore duplicates
limit is a < limit not a <=
=end



