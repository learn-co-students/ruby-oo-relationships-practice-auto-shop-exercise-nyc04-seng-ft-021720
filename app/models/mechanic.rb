class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.cars_by_mechanic(mechanic)
    Car.all.select{|car| car.mechanic == mechanic}
  end

  def self.car_owners_by_mechanic(mechanic)
    cars_by_mechanic(mechanic).map{|car| car.car_owner}.uniq
  end

end

