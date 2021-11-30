class RomanNumeral
  NUMERALS = [['I', 'V', 'X'],['X', 'L', 'C'],['C', 'D', 'M'],['M', '', '']]
  
  def initialize(number)
    @number = number
  end
  
  def to_roman
    result = ""
    number.digits.each_with_index do |digit, place|
      result.prepend(one_nine(digit, place))
    end
    result
  end
  
  def one_nine(digit,place)
    one, five, ten = NUMERALS[place]
    case digit
    when 0 then ""
    when 1..3 then one * digit
    when 4 then one + five
    when 5 then five
    when 6..8 then five + one_nine(digit-5,place)
    when 9 then one + ten
    end
  end 
  
  private
  attr_reader :number
end
