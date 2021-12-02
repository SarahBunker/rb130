class Diamond
  def self.make_diamond(letter)
    return "A\n" if letter == "A"
    diamond = []
    width = ("A"..letter).to_a.size*2 - 1
    middle_space = 1
    ("A"..letter).to_a.each_with_index do |current_letter, index|
      if current_letter == "A"
        diamond << "A".center(width)
      else
        middle_string = current_letter + " "*middle_space + current_letter
        diamond << middle_string.center(width)
        middle_space += 2
      end
    end
    diamond += diamond[0...-1].reverse
    
    diamond.join("\n") + "\n"
  end
end
