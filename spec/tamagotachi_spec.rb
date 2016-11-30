require('rspec')
require('tamagotachi')

describe(Tamagotachi) do
  describe('#initialize') do
    it('sets the name and life levels of a new Tamagotachi') do
      my_pet = Tamagotachi.new('lil dragon')
      expect(my_pet.name()).to(eq('lil dragon'))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end


  describe('#is_alive') do
    it('is alive if the food level is above 0') do
      my_pet = Tamagotachi.new('lil dragon')
      expect(my_pet.is_alive?()).to(eq(true))
    end


    it('is dead if the food level is 0') do
      my_pet = Tamagotachi.new('lil dragon')
      my_pet.change_food_level()
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end

  describe('#time_passes') do
    it('decreases the amount of food the Tamagotachi has left by 1') do
      my_pet = Tamagotachi.new('lil dragon')
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(0))
    end
  end

  describe('#feed') do
    it('increases the food level of the Tamagotachi by') do
      my_pet = Tamagotachi.new('lil dragon')
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(1))
    end
  end

end
