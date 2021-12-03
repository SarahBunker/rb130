class Clock
  
  def self.at(hours, minutes = 0)
    new(hours, minutes)
  end
  
  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
    normalize_positive_time
    normalize_negative_time
  end
  
  def to_s
    # time_array = [hours, minutes]
    # time_array.map(&:to_s).map {|time| time.size == 1? time.prepend("0") : time}.join(":")
    format('%02d:%02d', hours, minutes)
  end
  
  def +(min)
    Clock.at(hours,self.minutes + min)
  end
  
  def -(min)
    Clock.at(hours,self.minutes - min)
  end
  
  def ==(other)
    hours == other.hours && minutes == other.minutes
  end
  
  protected
  attr_reader :hours, :minutes
  
  private
  attr_writer :hours, :minutes
  
  def normalize_negative_time
    while minutes < 0
      self.hours -= 1
      self.minutes += 60
    end
    while hours < 0
      self.hours += 24
    end
  end
  
  def normalize_positive_time
    while minutes >= 60
      self.minutes -= 60
      self.hours += 1
    end
    while hours >= 24
      self.hours -= 24
    end
  end
end

clock = Clock.at(8)
puts clock
clock1 = Clock.at(8,4)
puts clock1
clock = Clock.at(10) + 3
puts clock