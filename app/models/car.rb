class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    self.all.map { |car| car.classification}
  end

  def mechanics
    Mechanic.all.select { |mech| mech.specialty  == self.classification}
  end
  


end
