require 'pry'
class Octal
  def initialize(string)
    @octal = string
  end
  
  def to_decimal
    return 0 unless octal.chars.all?(/[0-7]/)
    result = 0
    octal.to_i.digits.each_with_index do |digit, exponent|
      result += digit * 8**(exponent)
    end
    result
  end
  
  private
  attr_reader :octal
end
