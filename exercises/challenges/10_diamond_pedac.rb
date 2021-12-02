=begin
#-------------------------------------------------
PROBLEM:

makes a diamond with the supplied letter at largest point
the top and bottom are A
each next letter only has 2 letters on the ends
top half is ascending
bottom half is descending
symetric horizontally and vertically
The width of the diamond equals the height
4 empty corners(spaces) are triangles

input: Letter
output: returns diamond
mutating?
rules:
  Explicit requirements:
    
  Implicit requirements:
    function returns a string that equals the diamond
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:

def class Diamond
class methods:
::make_diamond(letter)
diamond = []
add lines to diamond array
  determine width of diamond array
    (a..letter).to_a.size*2 -1
  iterate from A to letter with index
    if A return "A"
    center >> letter + " "*index + letter with " " padding
    return that string
  iterate from previous letter to A
    if A return "A"
    center >> letter + " "*index + letter with " " padding
    return that string
  add each string to diamond array
join diamond array with new lines
return diamond

instance methods:

=end



