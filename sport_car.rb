class SportCar < Car
  def start_engine
    super
    puts "Wroom!!!" if engine_stopped?
  end

  protected
  def initial_rpm
    1000
  end
end
