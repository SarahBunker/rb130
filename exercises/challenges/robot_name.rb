class Robot
  attr_reader :name
  
  @@robot_names = []
  
  LETTERS = ("A".."Z").to_a
  DIGITS = (0..9).to_a.map(&:to_s)

  def initialize
    @name = random_name
    @@robot_names << name
  end
  
  def reset
    @@robot_names.delete(name)
    initialize
  end
  
  private
  
  def random_name
    new_name = ""
    loop do
      new_name = ""
      2.times {new_name += LETTERS.sample}
      3.times {new_name += DIGITS.sample}
      break unless @@robot_names.include?(new_name)
    end
    new_name
  end
end

robot = Robot.new
p robot.name
robot.reset
p robot.name