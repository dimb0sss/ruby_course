require_relative 'car'
require_relative 'truck'
require_relative 'sport_car'

car=Car.new
Car.instance_methods

car.fill_tank(50)

puts car.fuel_tank

puts car.print_class
