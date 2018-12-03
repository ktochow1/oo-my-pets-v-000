class Owner
  attr_accessor :name, :pets
  attr_reader :species 
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {cats: [], dogs: [], fishes: []}
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish 
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def walk_dogs
    @pets.each to #iterate over hash, get an instance of a dog and change it's mood to happy
    new_dog.mood=("happy")
    
  end
    
end