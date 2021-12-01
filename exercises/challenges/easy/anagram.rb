class Anagram
  def initialize(word)
    @word = word
    @word_sorted = word.downcase.chars.sort
  end
  
  def match(list)
    list.select do |item|
      item_sorted = item.downcase.chars.sort
      (item.downcase == word.downcase) ? false : item_sorted == word_sorted
    end
  end
  
  private
  attr_reader :word_sorted, :word
end