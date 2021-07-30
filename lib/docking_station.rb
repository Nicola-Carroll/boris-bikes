require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize(bikes = [])
    @bikes = bikes
  end

  def release_bike
    # Bike.new
    fail "There is no bike at this docking station" if @bikes.empty?
    @bikes.first
    
  end

  def dock(bike)
    raise "This docking station is full" if @bikes.length == 20
    @bikes.push(bike)
  end

end
