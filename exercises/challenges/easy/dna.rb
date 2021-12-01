=begin
#-------------------------------------------------
PROBLEM:
calculate the hamming distance between two dna strands

Hamming Distance is minimum number of point mutations that could have occured on the evolutionary path between the two strands
  - the number of differences between two strands of equal length
  - if the strands are different lengths then compare up to the length of the shorter string

input: initialize a dna object with a string
  call hamming_distance with a string argument
output:
#hamming_distance
  returns 0 if same strings
    including when strings are empty
    
  
mutating? Non mutating
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
Edge cases?

Letter not ACGT
arguments are not strings, other data types
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:
create DNA class
#initialize dna strand store as string
#hamming distance: iterate through shorter string
 - with index
 - compare to other string
 - increment counter if chars are different
 - return counter
=end

class DNA
  def initialize(string)
    @strand = (string)
  end
  
  def hamming_distance(other)
    hamming = 0
    short, long = [strand.chars, other.chars].sort_by {|strand| strand.size}
    short.each_with_index {|char, ind| hamming += 1 if char != long[ind]}
    hamming
  end
  
  private
  attr_reader :strand
end
