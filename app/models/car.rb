class Car

  attr_reader :make, :model, :owner, :classification

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  # Get a list of all cars
  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.classifications
    Car.all.select {|car| car.classification}
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
