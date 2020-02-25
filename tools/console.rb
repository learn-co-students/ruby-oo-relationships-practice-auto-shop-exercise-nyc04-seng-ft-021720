require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# CAR OWNERS

matt = CarOwner.new("Matt")
mike = CarOwner.new("Mike")
fred = CarOwner.new("Fred")
bob = CarOwner.new("Bob")

# CARS
# "antique", "exotic", or "clunker"

rolls = Car.new("Rolls Royce", "Phantom", "exotic", matt)
levante = Car.new("Masarati", "Levante", "exotic", fred)
model_one = Car.new("Ford", "Model One", "antique", matt)
bronco = Car.new("Ford", "Bronco", "antique", mike)
pinto = Car.new("Ford", "Pinto", "clunker", bob)
civic = Car.new("Honda", "Civic", "clunker", fred)

# MECHANICS

billy = Mechanic.new("Billy", "exotic")
joe = Mechanic.new("Joe", "antique")
jerry = Mechanic.new("Jerry", "clunker")


binding.pry
# last line