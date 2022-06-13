class Route

  attr_accessor :stations, :middle_stations

  def initialize(first_station, last_station)
    @middle_stations = []
    @stations = [first_station,@middle_stations,last_station]

  end

  def show_route
    puts stations
  end

  def add_station(station)
    self.middle_stations.push(station)
  end

  def del_station(station)
    self.middle_stations.delete(station)
  end

end