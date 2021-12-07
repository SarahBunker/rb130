require 'date'
require 'pry'

class Meetup
  attr_reader :year, :month, :first_day, :matches, :weekday, :descriptor
  attr_accessor :other_day
  
  def initialize(year, month)
    @year = year
    @month = month
    @first_day = Date.new(year, month, 1)
    @other_day = nil
    @matches = []
  end
  
  # def date
  #   # first_day.strftime('%Y-%m-%d')
  # end
  
  def day(weekday, descriptor)
    @weekday = weekday.downcase
    @descriptor = descriptor.downcase
    find_matches_weekday
    case @descriptor
    when "first"  then matches[0]
    when "second" then matches[1]
    when "third"  then matches[2]
    when "fourth" then matches[3]
    when "fifth"  then matches[4]
    when "last"   then matches[-1]
    when "teenth" 
      matches.select{|date_obj| (13..19).to_a.include?(date_obj.day)}[0]
    end
    # itterate through matches
    # return day that matches descriptor
  end
  
  def find_matches_weekday
    other_day = first_day
    loop do
      matches << other_day if other_day.send("#{weekday}?".to_sym)
      other_day += 1
      break if other_day.month != first_day.month
    end
  end
end

# bookclub = Meetup.new(2021, 12)
# bookclub.day("Thursday", "first")
# bookclub.find_matches_weekday
# p bookclub.matches

meetup = Meetup.new(2016, 10)
p meetup.day('Monday', 'teenth') == Date.civil(2016, 10, 17)