module FuelTank
  attr_reader :fuel_tank

  def fill_tank(level)
    @fuel_tank=level
  end

  def fuel_tank
    @fuel_tank
  end

  protected

  attr_writer :fuel_tank
end

module Debugger
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def debug(log)
      puts "DEBUG #{log} !!!!"
    end
  end

  module InstanceMethods
    def debug(log)
      self.class.debug(log)
    end

    def print_class
      puts self.class
    end
  end

end

class Car
  include FuelTank
  include Debugger
  attr_reader :current_rpm

  @@instances = 0

  def self.insances
    @@instances
  end


  def initialize
    @current_rpm = 0
    @@instances+=1
    debug('Initialize')
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


