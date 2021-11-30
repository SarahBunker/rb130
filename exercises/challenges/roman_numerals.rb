# class RomanNumeral
#   NUMERALS = [['I', 'V', 'X'],['X', 'L', 'C'],['C', 'D', 'M'],['M', '', '']]
  
#   def initialize(number)
#     @number = number
#   end
  
#   def to_roman
#     result = ""
#     number.digits.each_with_index do |digit, place|
#       result.prepend(one_nine(digit, place))
#     end
#     result
#   end
  
#   def one_nine(digit,place)
#     one, five, ten = NUMERALS[place]
#     case digit
#     when 0 then ""
#     when 1..3 then one * digit
#     when 4 then one + five
#     when 5 then five
#     when 6..8 then five + one_nine(digit-5,place)
#     when 9 then one + ten
#     end
#   end 
  
#   private
#   attr_reader :number
# end

class RomanNumeral
  NUMERALS = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}
  
  def initialize(number)
    @number = number
  end
  
  def to_roman
    result = ""
    temp_num = number
    numerals = NUMERALS.to_a.sort_by {|pair| pair[0]}.reverse
    numerals.each do |value, letter|
      while value <= temp_num
        temp_num -= value
        result << letter
      end
    end
    result
  end
  
  private
  attr_reader :number
end