=begin
#-------------------------------------------------
PROBLEM:
take a string of digits and return all possible consecutive number seris of a specific length

input: digit as string
'01234'
output: consecutive numbers in a sub array of bigger array
[0, 1, 2], [1, 2, 3], [2, 3, 4]
mutating?
rules:
  Explicit requirements:
    raise ArgumentError  if asking for a series longer then the string
  Implicit requirements:
    consecutive doesn't mean 123, in this case it means the digits are next to each other
    has to deal with numbers as strings that start with zero
    
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

given string '01234'
      slice length 2
  error if slice length > string.size
  split into strings of length 2
    01 12 23 34
    num  items is string.len - slice length + 1
                  5          - 2            + 1 = 4
    string '01234'
    slice length 3
    012 123 234
                  5           -3             + 1 = 3

    iterate num_items   times
      a_segment = string[current_num, slice_length]
    
  store strings in array
  itterate through array
    split string into chars
    itterate through chars and convert to integers
    save sub array in result array
  return result array

define class Series

class methods:

instance methods:
# initialize(string)
# slices(slice_len)
  raise ArgumentError  if slice_len is longer then the string
  string_slices = []
  determine number of series [string.len - slice_len + 1]
  from zero to that number iterate
    take a slice of string [current_num, slice_len]
    split string into chars array
    itterate through chars and convert to integers
    add to array of string_slices
  return string_slices
=end



