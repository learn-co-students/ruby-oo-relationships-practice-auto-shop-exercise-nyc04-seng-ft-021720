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
    cars_owned.map {|car| car.mechanic}
  end

  # Get the average amount of cars owned for all owners
  def self.avg_cars_owned
    owners = CarOwner.all.count.to_f
    cars = Car.all.count.to_f
    (cars / owners)
  end

end