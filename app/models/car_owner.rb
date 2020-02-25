class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Get a list of all owners
  def self.all
    @@all
  end

  # Get a list of all the cars that a specific owner has
  def cars_owned
    Car.all.select {|car| car.owner == self}
  end

  # Get a list of all the mechanics that a specific owner goes to
  def my_mechanics
    self.cars_owned
  end

  # Get the average amount of cars owned for all owners
  def self.avg_cars_owned
    owners = CarOwner.all.count
    cars = Car.all.count
    (cars / owners).average
  end

end