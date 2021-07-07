class Mechanic 

  attr_reader :name, :specialization
  @@all = []

  def initialize(name, specialization)
      @name = name 
      @specialization = specialization
      @@all.push(self)
  end

  def list_of_cars #List of all cars a certain mechanic works on 
      Car.all.select do |cars|
          cars.mechanic == self 
      end  
  end 

  def list_of_owners #list of all owners that a certain mechanic works for 
      list_of_cars.map do |owners|
          owners.owner
      end 
  end 

  def name_list_of_owners #this returns the names of all those list_of_owners 
      list_of_owners.map do |owners|
          owners.name 
      end 
  end 

end 