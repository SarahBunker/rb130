=begin
#-------------------------------------------------
PROBLEM: determine if a number is perfect, abundant, or deficient

Perfect numbers have an Aliquot sum that is equal to the original number.
Abundant numbers have an Aliquot sum that is greater than the original number.
Deficient numbers have an Aliquot sum that is less than the original number.
  prime numbers are always deficient because thier only divisor is 1

Aliquot sum is the sum of positive divors(# that can be evenly devided, no remainder excluding the number itself)

input: 
output:
mutating?
rules:
  Explicit requirements:
    
  Implicit requirements:
    raise error if given negative input
    
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

class methods:
::classify(number)
  return "deficient" if number is prime
  pass number to aliquot sum method
  helper aliquot sum
    calculate all divisors
    store in array
    sum array
  compare original number - result
  if positive return "deficient"
  elif 0 return "perfect"
  else return "abundant"
output string
instance methods:

=end



