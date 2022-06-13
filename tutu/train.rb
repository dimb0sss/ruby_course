class Train

  attr_reader :type
  attr_accessor :count, :speed , :route


  def initialize(type='грузовой', count=1, speed = 0)
    @type = type
    @count = count
    @speed = speed
    @route = []
  end

  def go
    self.speed = 50
  end

  def current_speed
    puts speed
  end

  def break
    self.speed=0
  end

  def show_count
    puts count
  end

  def add_van
    if speed==0
      self.count+=1
    else
      puts 'Поезд на ходу, сцепка невозможна'
    end
  end

  def remove_van
    if speed==0&&count>1
      self.count-=1
    elsif count <=1
      puts 'Вагонов меньше двух, расцепка невозможна'
    else
      puts 'Поезд на ходу, расцепка невозможна'
    end
  end

  def add_route(route)
    self.route=route
  end
end