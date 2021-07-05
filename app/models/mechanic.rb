class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all.push(self)
end

def services
  mechanic = self.all.select{|mechanics| mechanics.name == self}
  mechanic.map{|mechanic| mechanic.specialty}
end

def self.mechanics
  self.all.map{|mechanics| mechanics.name}
end

def car_owners
  mechanics_cars = Cars.all.select{|cars| cars.mechanic == self}
  mechanics_cars.map{|cars|cars.car_owner}
end

def self.all
  @@all
end

end
