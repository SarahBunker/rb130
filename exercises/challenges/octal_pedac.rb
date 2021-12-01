=begin
#-------------------------------------------------
PROBLEM:
octal to decimal conversion

must implement the conversion in code, not using library

converting from octal to decimal
rightmost digit gets multiplied by 8^0
next digit mult by 8^1
next mult by 8^2
..
nth digit gets multiplied by 8^(n-1)
then sum all results


input: octal string
  invalid input is octal 0
output: decimal
mutating?
rules:
  Explicit requirements:
    
  Implicit requirements:
    
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:
create Octal class
class methods:

instance methods:
#initialize(string)
#to_decimal
  returns 0 if input has letters
  returns 0 if input has digits greater then 7
  input can have a zero in front
  
  - check input only has characters 0-7 return 0 otherwise
  - result = 0
  - n = 0  << replace n with index
  - convert input to array of digits ordered smallest to largest
  - iterate through digits (with index)
      result += digit * 8^(n)
      increment n
    return result
=end



