class CarOwner

  attr_reader :name, :car
  @@all = []

  def initialize(name, car)
    @name = name
  end

  def cars
    cars = Cars.all.select{|cars| cars.car_owner == self}
  end

  def mechanics
    self.cars.map{|cars| cars.mechanic}
  end

  def self.average_cars
    car_owners = self.all.length
    cars = Car.all.length
    owners.to_f/cars.to_f
  end

  def self.all
    @@all
  end

end
