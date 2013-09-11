module Fight
  def punch(person)
    person.scream
    if @strength > 5
      person.run
      person.caffeine_level -= @strength
    end
    @caffeine_level -= (@strength/2)
    return "#{@name} punched #{person.name}!"
  end

  def fight_scene(p1, p2, r1, r2, n1, n2)
    puts p1.scream
    puts r1.punch(n1)
    puts n1.punch(p2)
    puts p2.rest
    puts n2.punch(p2)
  end
end

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

  include Fight

  def initialize(name, color, strength)
    super(name)
    @color = color
    @strength = strength
  end

  def rest
    @strength = @strength + 1
    return "#{@name} increased their strength!"
  end

  def self.use_megazord(person)
    person.scream
    person.run
    person.caffeine_level -= 5000
    @caffeine_level -= 2500
  end

end

class EvilNinja < Person

  include Fight

  def initialize(name, strength, evilness)
    super(name)
    @strength = strength
    @evilness = evilness
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

#-----------TESTING Fight MODULE-----------#
bob2 = Person.new('Bob2')
jane2 = PowerRanger.new("Jane2", "Green", 10)
jack2 = EvilNinja.new("Jack2", 10, 5)

puts "Begin Fight Scene"
puts jack.fight_scene(bob, bob2, jane, jane2, jack, jack2)