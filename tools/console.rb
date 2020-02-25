require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

hank = CarOwner.new("Hank")
sarah = CarOwner.new("Sarah")
jack= CarOwner.new("Jack")
fritz = CarOwner.new("Fritz")

bill = Mechanic.new("Bill", "Classic")
ann = Mechanic.new("Ann", "Foreign")
deke = Mechanic.new("Deke", "Truck")

chevy = Car.new("Chevy", "Shitbox", "Classic", hank, bill)
toyota = Car.new("Toyota", "Camry", "Foreign", hank, ann)
subaru = Car.new("Subaru", "Camry", "Foreign", sarah, ann)
ford = Car.new("Ford", "Tempo", "Truck", fritz, deke)
chevy = Car.new("Chevy", "Shitbox", "Classic", jack, bill)





binding.pry


"LAST LINE"