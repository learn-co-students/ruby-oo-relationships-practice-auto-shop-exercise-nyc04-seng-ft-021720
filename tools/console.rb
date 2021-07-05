require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


john_wick = CarOwner.new("John Wick", "Mustang")

john_wick.name

