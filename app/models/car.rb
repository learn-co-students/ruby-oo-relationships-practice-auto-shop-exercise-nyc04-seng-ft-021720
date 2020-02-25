class Car

  attr_reader :make, :model, :car_owner, :mechanic, :classification

  @@all = []

  def self.all
    @@all
  end

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.classifications
    Car.all.map{|car| car.classification}
  end
  
  def self.mechanics_by_classification(classification)
    Mechanic.all.select{|mechanic| mechanic.specialty == classification}
  end
end
