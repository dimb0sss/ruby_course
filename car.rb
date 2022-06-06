#Основы ООП
class Car

  attr_reader :engine_volume
  attr_accessor :speed



  def initialize(speed = 0, engine_volume=2.0) #значения по умолчанию

    @speed = speed
    @engine_volume = engine_volume
  end


  def start_engine
    puts "Wroom!"
  end

  def beep
    puts "beep beep"
  end

  def stop
    @speed = 0
    puts "stop"
  end

  def go
    @speed = 50 #instance переменная доступна во всех методах класса
    speed = 40 #локальная переменная доступна только в текущем методе
  end

  def speed #Геттер
    @speed
  end

  def speed=(speed) #Сеттер
    @speed = speed
  end



  def current_speed
    self.speed = 0 #instance переменная доступна во всех методах класса
  end
end

car = Car.new(15,1.5)
car2 = Car.new
car2.current_speed
car.current_speed
car.go
car.beep
car.stop
car.speed = 99
car.current_speed