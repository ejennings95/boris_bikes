require_relative 'bike'

class NoBikePresentError < StandardError
end

class DockingStation

  attr_reader :bike

  def initialize
    @bike = nil
  end

  def release_bike
    if @bike.nil?
      raise NoBikePresentError, "There is no bike to hire"
    end

    @bike
  end

  def dock(bike)
    if @bike.class == Bike
      raise 'DockFullError'
    end
    @bike = bike
  end

end

