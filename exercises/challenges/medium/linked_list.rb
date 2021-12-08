require "pry"

class Element
  attr_accessor :data, :next_element
  def initialize(data, next_element = nil)
    @data = data
    @next_element = next_element
  end
  
  def datum
    @data.dup
  end
  
  def tail?
    true unless next_element
  end
  
  def next
    next_element
    # next_element.kind_of? Element ? next_element : nil
  end
end

class SimpleLinkedList
  attr_accessor :list
  def initialize(list = [])
    @list = list
  end
  
  def size
    list.size
  end
  
  def empty?
    size == 0
  end
  
  def push(data)
    if list[-1]
      list << Element.new(data, list[-1])
    else
      list << Element.new(data)
    end
  end
  
  def peek
    unless list[-1]
      nil
    else
      list[-1].datum 
    end
  end
  
  def head
    list[-1]
  end
  
  def pop
    list.pop.datum
  end
  
  def self.from_a(arg)
    list = SimpleLinkedList.new
    if arg != nil
      arg.reverse.each {|data| list.push(data)}
    end
    list
  end
  
  def to_a
    list.reverse.map{|element| element.datum}
  end
  
  def reverse
    SimpleLinkedList.from_a(to_a.reverse)
  end
end