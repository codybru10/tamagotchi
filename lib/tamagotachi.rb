class Tamagotachi
  @@initial_level = 10
  @@food = 10
  @@sleep = 10
  @@activity = 10
  @@start = Time.new().sec()

  define_method(:initialize) do |name|
    @my_pet = name
    @initial_time = Time.new(2016, 1, 1)
    end

  define_method(:name) do
    @my_pet
  end

  define_method(:food_level) do
    @@food
  end

  define_method(:sleep_level) do
    @@sleep
  end

  define_method(:activity_level) do
    @@activity
  end

  define_method(:is_alive?) do
     food_level().>= 1
  end

  define_method(:change_food_level) do
    @@food = @@food - 10
  end

  define_method(:time_passes) do
    if @@start > 300
      change_food_level()
    end
  end

  define_method(:feed) do
    @@food = @@food + 1
  end

end
