require_relative '../app/models/mechanic.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/car_owner.rb'



stanley = Car_Owner.new("Stanley")
katy = Car_Owner.new("Katy")
daniel = Car_Owner.new("Daniel")

jordan = Mechanic.new("Jordan","Exotic")
kenji = Mechanic.new("Kenji","Antique")


stanley.assign_mechanic_to_car("BMW", "i8", "Exotic", jordan)
stanley.assign_mechanic_to_car("BMW", "i8", "Exotic", jordan)
stanley.assign_mechanic_to_car("BMW", "i8", "Exotic", jordan)

daniel.assign_mechanic_to_car("BMW", "i8", "Exotic", kenji)
stanley.assign_mechanic_to_car("BMW", "i8", "Exotic", kenji)
katy.assign_mechanic_to_car("BMW", "i8", "Exotic", kenji)

        


p Car_Owner.average_amount_of_cars