class Scrabble
  LETTER_SCORE = {'AEIOULNRST' => 1, 'DG' => 2, 'BCMP' => 3, 'FHVWY' => 4, 'K' => 5, 'JX' => 8, 'QZ' => 10}
  
  def initialize(word)
    @word = word ? word : ""
  end
  
  def score
    result = 0
    word.gsub!(/[^a-zA-Z]/, '')
    word.chars.uniq.each do |char|
      result += score_char(char) * word.count(char)
    end
    result
  end
  
  def score_char(char)
    LETTER_SCORE.each do |letters, points|
      return points if letters.include?(char.upcase)
    end
  end
  
  def self.score(word)
    Scrabble.new(word).score
  end
  
  private
  attr_reader :word
end
