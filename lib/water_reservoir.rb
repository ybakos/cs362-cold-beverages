class WaterReservoir

  attr_reader :capacity
  attr_accessor :volume

  def initialize(capacity = 10, initial_water_volume = 0)
    @capacity = capacity
    @volume = initial_water_volume
  end

  def empty?
    @volume == 0
  end

  def fill(volume)
    @volume += volume
  end

  def drain(volume)
    if volume <= @volume
      @volume -= volume.to_i
    else
      @volume = 0
    end
  end

end
