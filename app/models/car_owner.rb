#In this situation Car would be the only source of truth, as one car can only be worked on by one mechanic(?)
# and it would only have one and only one owner, while mechanics work with many carowners/vice versa.

class Car_Owner 

  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
      @name = name 
      @@all.push(self)
  end 
  
  def self.all
      @@all 
  end 
  
  def assign_mechanic_to_car(car_brand, car_model, car_classification,mechanic)
      Car.new(car_brand,car_model,car_classification,self,mechanic)
  end 
  
  
  def list_of_cars #list of all cars an owner has 
      Car.all.select do |cars|
          cars.owner == self 
      end
  end 
  
  
  def list_of_mechanics 
      list_of_cars.map do |cars|
          cars.mechanic 
      end 
  end
  
  
  
  def self.average_amount_of_cars #lists out the average amount of cars owned for all owners
      owners = self.all.count 
      cars = Car.all.count 
      total = cars.to_f / owners.to_f
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  end 