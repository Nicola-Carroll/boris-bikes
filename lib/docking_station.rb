require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    # Bike.new
    fail "There is no bike at this docking station" if empty?
    @bikes.first
    
  end

  def dock(bike)
    raise "This docking station is full" if full?
    @bikes.push(bike)
  end

  private
  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end



end
