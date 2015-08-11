require('rspec')
require('tamagotchi')
require('pry')

describe(Tamagotchi) do

  describe('#initialize') do
    it("sets the name of a new Tamagotchi") do
      my_pet = Tamagotchi.new("water bottle")
      expect(my_pet.name()).to(eq("water bottle"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("water bottle")
      expect(my_pet.is_alive()).to(eq(true))
    end


  it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("water bottle")
      my_pet.food_level == 0
      my_pet.set_food_level() #make a method that will change the food level of your tamagotchi.
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe('#time_passes') do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new('water bottle')
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end





end
