class Series
  def initialize(string)
    @string = string
  end
  
  def slices(slice_len)
    raise ArgumentError.new if slice_len > string.size
    string_slices = []
    num_slices = string.size - slice_len + 1
    num_slices.times do |index|
      slice = string[index,slice_len]
      string_slices << slice.chars.map(&:to_i)
    end
    string_slices
  end
  
  private
  attr_reader :string
end

p Series.new("0123").slices(2)