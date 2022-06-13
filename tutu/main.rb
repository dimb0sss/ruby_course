require_relative 'railway_station'
require_relative 'route'
require_relative 'train'



train1 = Train.new('Пассажирский',5)
train1.current_speed
train1.go
train1.current_speed
train1.break
train1.current_speed
train1.show_count
train1.add_van
train1.show_count
train1.remove_van
train1.show_count
rail1=RailwayStation.new("Москва")
rail1.showTrains

route1 = Route.new("Чебоксары","СПб")
route1.add_station('Москва')
route1.show_route
