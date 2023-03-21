class WaterReservoir

  attr_reader :capacity
  attr_accessor :current_water_volume

  def initialize(capacity = 10, initial_water_volume = 0)
    @capacity = capacity
    @current_water_volume = initial_water_volume
  end

  def current_water_volume
    @current_water_volume
  end

  def capacity
    @capacity
  end

  def empty?
    current_water_volume == 0
  end

  def fill
    self.current_water_volume = capacity
  end

  def drain(vessel, volume)

    if volume <= current_water_volume
      self.current_water_volume -= volume
      vessel.pour_into_vessel(volume)

    else
      vessel.pour_into_vessel(current_water_volume)
      self.current_water_volume = 0
    end
  end

end
