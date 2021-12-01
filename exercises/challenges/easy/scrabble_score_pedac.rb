=begin
#-------------------------------------------------
PROBLEM:
given a word compute the scrabble score for the word
A E I O U L N R S T => 1
D G => 2
B C M P => 3
F H V W Y => 4
K => 5
J X => 8
Q Z => 10

input: word
output: integer (score of word)
mutating?
rules:
  Explicit requirements:
    
  Implicit requirements:
    empty string is 0
    whitespace in string is 0
    nil scores are 0
    scores are case insensitive
    
    convienient scoring
    
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE

hash to store letters in array (key) with score (value)
#-------------------------------------------------
ALGORITHM
example:
create class scrabble
#initialize
init word

#score
init result - 0
delete all nonalpha characters from word
return result if word is nil or if word is empty
letter_score hash
split word into characters
iterate over uniq characters in word
  # score character
    iterator over letter_score hash
      compare upcase letter to keys
      if key includes letter return value
  
  multiple score for char by number of that character in the word
  add to result
result

::score
same as instance method, but class method
=end



