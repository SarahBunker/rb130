require "pry"

class CustomSet
  
  def initialize(array = [])
    @array = array.uniq
    # array.each{|ele| add(ele) }
  end
  
  def empty?
    array.empty?
  end
  
  def contains?(element)
    array.include?(element)
  end
  
  def subset?(other)
    array.each {|ele| return false unless other.array.include?(ele) }
    true
  end
  
  def disjoint?(other)
    array.each {|ele| return false if other.array.include?(ele) }
    true
  end
  
  def eql?(other)
    return false unless other.kind_of? self.class
    subset?(other) && other.subset?(self)
  end
  
  def add(element)
    array << element unless contains?(element)
    self
  end
  
  def ==(other)
    eql?(other)
  end
  
  def intersection(other)
    new_set = CustomSet.new
    array.each{ |ele| new_set.add(ele) if other.contains?(ele) }
    new_set
  end
  
  def difference(other)
    new_set = CustomSet.new
    array.each{ |ele| new_set.add(ele) unless other.contains?(ele) }
    new_set
  end
  
  def union(other)
    new_set = CustomSet.new
    array.each{ |ele| new_set.add(ele)}
    other.array.each{ |ele| new_set.add(ele)}
    new_set
  end
  
  protected
  attr_reader :array
end