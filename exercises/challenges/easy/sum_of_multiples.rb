class SumOfMultiples
  def initialize(*set)
    set.empty? ? @set = [3,5] : @set = set
  end
  
  def to(limit)
    multiples = []
    set.each do |num|
      mult = num
      while mult < limit
        multiples << mult unless multiples.include?(mult)
        mult += num
      end
    end
    multiples.sum
  end
  
  def self.to(limit)
    new.to(limit)
  end
  
  private
  attr_reader :set
end
