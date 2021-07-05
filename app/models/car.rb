class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all.push(self)
  end

  def self.classifications
    self.all.map{|cars| cars.classification}.uniq
  end

  def self.mechanics(classification_find)
    self.all.select{|cars| cars.classification == classification_find}
  end

  def self.all
    @@all
  end

end
