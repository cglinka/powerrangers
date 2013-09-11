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
    return "#{@name} increased their strength!"
  end
end

class EvilNinja < Person
  def initialize(name, strength, evilness)
    super(name)
    @strength = strength
    @evilness = evilness
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

  def cause_mayhem(person)
    person.caffeine_level = 0
    return "Oh no! #{@name} caused mayhem! #{person.name} has no more caffeine!"
  end

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
puts jane.rest

#-----------TESTING EvilNinja CLASS-----------#
jack = EvilNinja.new("Jack", 10, 5)
puts jack.scream
puts jack.punch(jane)
puts jack.cause_mayhem(bob)