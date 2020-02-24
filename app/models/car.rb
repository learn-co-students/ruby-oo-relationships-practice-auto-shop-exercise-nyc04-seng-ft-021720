class Car
  attr_reader :car_name, :car_model, :car_classification, :owner, :mechanic
  
  @@all = []
  
  def initialize(car_brand, car_model,car_classification, owner, mechanic)
      @car_brand = car_brand 
      @car_model = car_model
      @car_classification = car_classification 
      @owner = owner 
      @mechanic = mechanic
      @@all.push(self)
  end 
  
  
  
  def self.all
      @@all 
  end 
  
  def self.car_classifications
      self.all.map do |cars| 
          cars.car_classification 
      end 
  end 
  
  
  def self.match_car_classification(classification)
    mechanics =  self.all.map do |cars|
        if cars.mechanic.specialization == classification
          cars.mechanic
       end
      end 
      mechanics.compact
  end 
  
  
  
  
  
  
  
  end 