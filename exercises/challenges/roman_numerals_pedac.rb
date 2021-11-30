=begin
#-------------------------------------------------
PROBLEM:
Write code that converts from modern decimals to roman number equivalents
  - don't need to convert more then 3000
  - express each digit seperatly starting with leftmost digit and skipping any zeros
  - nummbers right below a 5 something or a 10 something are made by placing the smaller value in front
    * 5 is IV, 9 is IX, 40 is XL, 90 is XC..
    * its like subtracting the precvious number from the first.

Roman numbers
1 => I
5 => V
10 => X
50 => L
100 => C
500 => D
1000 => M


input: number in decimal
output: number in roman numerals
mutating?
rules:
  Explicit requirements:
   
  Implicit requirements:
  
Unclear parts of problem?
Edge cases?

input validatation
input is 0
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE
numerals array
[0                    , 1...]
[array[one, five, ten], array[one, five, ten]
array has the letter representing the one five and ten for that digit place
#-------------------------------------------------
ALGORITHM
example: 27
class RomanNumeral
initialize number

#to_roman > outputs string
convert number to array of digits in reverse order >> [7,2]
set variable to represent digit place >> index  0   1
initialize empty result string  >> ""
itterate through digits with index
  #helper method? one_nine(digit,index)
    access one five and ten for digit place
      one, five, ten = numerals[index] >> one = I or X, five = V or L, ten = X or C
    0 is skip
    1 is one
    2 is one one
    3 is one one one
    4 is one five
    5 is five
    # 6 is five one
    # 7 is five one one   >> V + II
    # 8 is five one one one
    9 is one ten
    
    6 through 8 get by subtracting 5 and recursively calling one_nine on what is left and adding to string
    ex:
    one_nine(8)
      num = 8
      ...
      when(6..8)
        num -= 5
        five << one_nine(num)
    return string of the one, five, and 10 to make that digit >> first time XX second time VII
  add return of string to front of result string
  return result string
  
needed to not reverse the digits
and then add the results to the front of the string
=end

