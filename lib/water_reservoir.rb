class WaterReservoir

  attr_reader :capacity
  attr_accessor :current_water_volume

  def initialize(capacity = 10, initial_water_volume = 0)
    @capacity = capacity
    @current_water_volume = initial_water_volume
  end

  def empty?
    self.current_water_volume == 0
  end

  def fill
    self.current_water_volume = capacity
  end

  def drain(volume)
    if self.current_water_volume > volume
      self.current_water_volume -= volume  
    else
      self.current_water_volume = 0
    end
  end

end
