=begin
#-------------------------------------------------
PROBLEM:
write program that generates lyrics to 99 bottles of beer on the wall song

input: verse number
output: text of song
mutating?
rules:
  Explicit requirements:
    
  Implicit requirements:
    includes new lines
    num of beer bottle changes
    2 bottles vs 1 bottle
    1 bottle vs no bottles
    last verse is different!!
    can access multiple verses at a time
      given two verses first number is starting verse
      last number is ending verse
    lyrics returns the whole song.
      each verse is separated by two new lines
Unclear parts of problem?
Edge cases?
#-------------------------------------------------
EXAMPLES

#-------------------------------------------------
DATA STRUCTURE


#-------------------------------------------------
ALGORITHM
example:
class BeerSong
@@num_bottles

class methods:
::verse(verse)
return = num_bottles_of_beer + ' on the wall, ' num_bottles_of_beer + '.\n'
  + take_one_down, num_bottles_of_beer + ".\n"

special cases for 2,1, 0 bottles of beer?
-------------------------------
"#{99} bottle{s} of beer on the wall, {99} bottle{s} of beer.\n" \
"Take {one} down and pass it around, {98} bottle{s} of beer on the wall.\n"

"2 bottles of beer on the wall, 2 bottles of beer.\n" \
"Take {one} down and pass it around, 1 bottle of beer on the wall.\n"

"1 bottle of beer on the wall, 1 bottle of beer.\n" \
"Take {it} down and pass it around, no more bottles of beer on the wall.\n"

"No more bottles of beer on the wall, no more bottles of beer.\n" \
"{Go to the store and buy some more}, 99 bottles of beer on the wall.\n"
------------------------------------
#plurality > 's' or ''
s comes from plurality method which determines if the number of bottles on the wall is >1

#num_bottles_of_beer
returns string of "#{num_bottles} bottles#{plurality} of beer" if num_bottles > 0
"no more bottles of beer on the wall" if num_bottles == 0

#take_one_down
subtract one beer from num_bottles
returns string of "Take #{num_bottles} down and pass it around" if num_bottles > 1
"Take it down and pass it around, " if num_bottles == 1
"Go to the store and buy some more, " if num_bottles == 0
    num_bottles = 99


verses(first_verse, last_verse)
song = ""
iterate from first_verse to last_verse
  add each verse to song
  add newline except on last iteration
return song


lyrics()
call verses(99,0)

instance methods:



-------------------------------
::verse(num_bottles_of_beer)
case statements
99 to 3 bottles
2
1
0
create strings of verses

::verses(first_verse, last_verse)
song = ""
iterate from first_verse to last_verse
  add each verse to song
  add newline except on last iteration
return song


lyrics()
call verses(99,0)
=end



