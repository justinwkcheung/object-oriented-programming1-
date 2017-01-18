class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)

    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time

  end

  def eats_at
    if @meal_time > 12
      @meal_time -= 12
      "#{meal_time}PM"
    elsif @meal_time == 12
      "12PM"
    else
      "#{meal_time}AM"
    end
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end


end

spots = Cat.new("spots", "meat", 9)
patches = Cat.new("patches", "tuna", 20)

# puts spots.name
puts spots.eats_at
puts patches.eats_at
puts spots.meow
puts patches.meow
