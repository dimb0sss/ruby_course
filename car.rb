class Car

  attr_reader :current_rpm

  @@instances = 0

  def self.insances
    @@instances
  end

  def self.debug

  end


  def initialize
    @current_rpm = 0
    @@instances+=1
  end

  def start_engine
    start_engine! if engine_stopped?
  end

  def engine_stopped?
    self.current_rpm.zero?
  end

  protected

  attr_writer :current_rpm

  def initial_rpm
    700
  end

  def start_engine!
    self.current_rpm = initial_rpm
  end

end



