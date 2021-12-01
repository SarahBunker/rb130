require 'prime'

class PerfectNumber
  def self.classify(number)
    raise StandardError.new if number < 1
    return "deficient" if number.prime?
    
    sum = aliquot_sum(number)
    
    if number > sum     then "deficient"
    elsif number == sum then "perfect"
    else                     "abundant"
    end
  end
  
  class << self
    private
    
    def aliquot_sum(number)
      (1..number/2+1).to_a.reduce(0) {|sum, div| number % div == 0? sum += div : sum}
    end
  end
end

