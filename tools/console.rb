require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

miranda = CarOwner.new('miranda')
paige = CarOwner.new('paige')
grace = CarOwner.new('grace')

kevin = Mechanic.new('kevin', 'modern')
michael = Mechanic.new('michael', 'hot rod')
konnor = Mechanic.new('konnor', 'antique')
steve = Mechanic.new('steve', 'sports')

Car.new('honda', 'accord', 'modern', miranda, kevin)
Car.new('ferrari', 'f50', 'sports', miranda, kevin)
Car.new('ford', 'mustang', 'hot rod', paige, michael)
Car.new('volkswagen', 'beatle', 'antique', grace, konnor)

binding.pry
