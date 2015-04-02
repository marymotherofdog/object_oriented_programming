class Rover

  attr_reader :x, :y, :direction

  def initialize(init_x, init_y, init_direction)
    @x = init_x
    @y = init_y
    @direction = init_direction
  end

  def location
    puts "I am at x: #{@x}, y: #{@y}, facing #{@direction}."
  end

  def move_forward
    if @direction == "N"
      @y += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "E"
      @x += 1
    else
      @x -= 1
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    else
      @direction = "N"
    end
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    else
      @direction = "N"
    end

  end


end


marzipan = Rover.new(1, 1, "N")

puts marzipan.location

marzipan.move_forward

puts marzipan.location

marzipan.turn_left

puts marzipan.location



