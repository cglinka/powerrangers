class Person
  @name
  @caffeine_level

  def initialize(name)
    @name = name
    @caffeine_level=0
  end

  def run
    return "#{@name} runs!"
  end

  def scream(input)
    return "#{@name} screams #{input.upcase()}!"
  end

  def drink_coffee(number)
    @caffeine_level += number
    return "#{@name} drinks #{number} cup(s) of coffee."
  end
end

class PowerRanger
end

class EvilNinja
end

bob = Person.new('Bob')
puts bob.scream("help")
puts bob.run
puts bob.drink_coffee(3)