class Owner
  attr_accessor :name, :pets
  attr_reader :species 
  
  def initialize(name)
    @name = name
    @species = "human"
  end
  
  def say_species
    "I am a human."
  end
  
  def pets
    @owner_pets = Hash.new
    @owner_pets = {:cats => [], :dogs => [], :fishes => []} 
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    new_fish = @owner_pets[:fishes] = 1 
    
    
    # @owner_pets[:fishes] << Fish.new(name)
  end 
    
end