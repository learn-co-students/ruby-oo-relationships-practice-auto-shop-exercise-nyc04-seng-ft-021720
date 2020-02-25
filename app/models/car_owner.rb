class CarOwner

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.cars_by_owner(car_owner)
    Car.all.select{|car|
      car.car_owner == car_owner
    }
  end

  def self.mechanics_by_owner(car_owner)
    cars_by_owner(car_owner).map{|car|
      car.mechanic
    }.uniq
  end

  def self.average_cars_owned
     Car.all.length.to_f / @@all.length.to_f
  end

end
