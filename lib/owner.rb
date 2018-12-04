require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species 
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {cats: [], dogs: [], fishes: []}
  end
  
  def self.all 
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
    @pets[:dogs].each do |dog|
      dog.mood=("happy") 
    end
   end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood=("happy")
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood=("happy")
    end
  end
  
  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood=("nervous")
      end
    end
    @pets = {cats: [], dogs: [], fishes: []}
  end
  
  # @pets = {cats: [], dogs: [], fishes: []}
  def list_pets 
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


 
    
end