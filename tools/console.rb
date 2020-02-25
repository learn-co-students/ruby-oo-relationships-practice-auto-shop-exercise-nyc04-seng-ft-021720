require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# CAR OWNERS

matt = CarOwner.new("Matt")
mike = CarOwner.new("Mike")
fred = CarOwner.new("Fred")
bob = CarOwner.new("Bob")

# MECHANICS

billy = Mechanic.new("Billy", "exotic")
brent = Mechanic.new("Brent", "exotic")
joe = Mechanic.new("Joe", "antique")
jerry = Mechanic.new("Jerry", "clunker")

# CARS
# "antique", "exotic", or "clunker"

rolls = Car.new("Rolls Royce", "Phantom", "exotic", matt, billy)
levante = Car.new("Masarati", "Levante", "exotic", fred, billy)
model_one = Car.new("Ford", "Model One", "antique", matt, joe)
bronco = Car.new("Ford", "Bronco", "antique", mike, joe)
pinto = Car.new("Ford", "Pinto", "clunker", bob, jerry)
civic = Car.new("Honda", "Civic", "clunker", fred, jerry)




binding.pry
# last line