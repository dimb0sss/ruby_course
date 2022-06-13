class RailwayStation

  attr_accessor :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def addTrain(train)
    trains.push(train)
  end

  def showTrains
    puts "Поезда на станции - #{trains}"
  end

  def showTypeTrains

  end

  def deleteTrains(train)
    trains.delete(train)
  end
end



