require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'text_class'

class TextTest < Minitest::Test
  attr_accessor :file, :text, :text_object
  def setup
    @file = File.open('text_sample.txt')
    @text = file.read
    @text_object = Text.new(text)
  end
  
  def test_swap
    swapped = text_object.swap('a','e')
    refute_includes(swapped, 'a')
    word_had_a = swapped.split[-2]
    assert_equal("pheretre", word_had_a)
  end
  
  def test_count
    assert_equal(text.split.count, text_object.word_count)
  end
  
  def teardown
    file.close
    puts "File has been closed: #{@file.closed?}"
  end
end