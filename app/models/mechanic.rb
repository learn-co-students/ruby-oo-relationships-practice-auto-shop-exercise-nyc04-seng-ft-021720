class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  # Get a list of all mechanics
  def self.all
    @@all
  end

  # Get a list of all cars that a mechanic services
  def cars_serviced
    Car.all.select {|car| car.classification == self.specialty}
  end

  # Get a list of all the car owners that go to a specific mechanic
  def car_owners
    cars_serviced.select {|car| car.owner}
  end

  # Get a list of the names of all car owners who go to a specific mechanic
  def car_owners_names
    car_owners.map {|car| car.owner.name}
  end

end
