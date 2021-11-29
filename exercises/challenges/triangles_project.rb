=begin
#-------------------------------------------------
PROBLEM: program that determines if a triangle is equilateral, isosceles, or scalene
eq: sides all same length
iso: 2 sides same length
scalene: no sides same length

triangle
- all sides length > 0
- sum of any two sides greater then the other side

input: create new triangle object with passing three sides to Triangle::new method
output: #kind => returns string of triangle type
mutating?
rules:
    Explicit requirements:
      can't have zero length sides
    Implicit requirements:
      sides can be integers or floats
      must raise argument error if invalid side given
      sides can't be negative in length
Unclear parts of problem?
Edge cases? non numerical data given as side lengths
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE

store triangle types in a hash with keys as number of unique sides, value as string of triangle type

#-------------------------------------------------
ALGORITHM
example:

create a triangle class
initialize method sets all the sides and creates an array of the sides
  - initialize method calls valid triangle method
valid triangle method > raises argument error
  - greater then zero method
    +checks that all sides are > zero
    +iterate through and come to greater then zero
  - inequality method
    +checks that any two sides are greater then the third side
    +compare [1,2], [1,3], [2,3] #might be a method that creates this grouping combination or permutation 
kind method > returns string of triangle type
  - checks how many unique sides there are
  3 > scalene
  2 > isosoles
  1 > equalateral
  - uses number of unique sides as key in hash to return value of triangle type

accessors: sides array- reader
=end

class Triangle
  TYPES = {1 => "equilateral", 2 => "isosceles", 3 => "scalene"}
  def initialize(a, b, c)
    @sides = [a, b, c]
    valid_triangle
  end
  
  def valid_triangle
    raise ArgumentError unless sides_have_length && inequality
  end
  
  def sides_have_length
    sides.all? {|side| side > 0}
  end
  
  def inequality
    first_two = sides[0] + sides[1] > sides[2]
    first_last = sides[0] + sides[2] > sides[1]
    last_two = sides[1] + sides[2] > sides[0]
    first_two && first_last && last_two
  end
  
  def kind
    eq_sides = sides.uniq.size
    TYPES[eq_sides]
  end
  
  private
  attr_reader :sides
end

