class Person
  attr_accessor :name, :caffeine_level

  def initialize(name)
    @name = name
    @caffeine_level=100
  end

  def run
    return "#{@name} runs!"
  end

  def scream
    return "#{@name} screams AHHHHHHHHH!"
  end

  def drink_coffee(number)
    @caffeine_level += number
    return "#{@name} drinks #{number} cup(s) of coffee."
  end
end

class PowerRanger < Person

  # def self.use_megazord(person)
    
  # end

  def initialize(name, color, strength)
    super(name)
    @color = color
    @strength = strength
  end

  def punch(person)
    person.scream
    if @strength > 5
      person.run
      person.caffeine_level -= @strength
    end
    @caffeine_level -= (@strength/2)
    return "#{@name} punched #{person.name}!"
  end

  def rest
    @strength = @strength + 1
  end
end

class EvilNinja < Person
end

#-----------TESTING Person CLASS-----------#
bob = Person.new('Bob')
puts bob.scream
puts bob.run
puts bob.drink_coffee(3)

#-----------TESTING PowerRanger CLASS-----------#
jane = PowerRanger.new("Jane", "Yellow", 10)
puts jane.scream
puts jane.punch(bob)
