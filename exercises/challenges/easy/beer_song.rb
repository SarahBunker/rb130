class Verse
end

class BeerSong
  def self.verse(num_bottles_of_beer)
    case num_bottles_of_beer
    when (3..99)
      <<~VRS
      #{num_bottles_of_beer} bottles of beer on the wall, #{num_bottles_of_beer} bottles of beer.
      Take one down and pass it around, #{num_bottles_of_beer-1} bottles of beer on the wall.
      VRS
    when 2
      <<~VRS
      2 bottles of beer on the wall, 2 bottles of beer.
      Take one down and pass it around, 1 bottle of beer on the wall.
      VRS
    when 1
      <<~VRS
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
      VRS
    when 0
      <<~VRS
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
      VRS
    end
  end
  
  def self.verses(start, stop)
    num_bottles_of_beer = start
    song = ""
    while num_bottles_of_beer >= stop
      song << verse(num_bottles_of_beer)
      song << "\n" unless num_bottles_of_beer == stop
      num_bottles_of_beer -= 1
    end
    song
  end
  
  def self.lyrics
    verses(99,0)
  end
end

p BeerSong.verses(99, 98)