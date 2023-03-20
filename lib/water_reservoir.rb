class WaterReservoir

  attr_reader :capacity
  attr_accessor :volume

  def initialize(capacity = 10, initial_water_volume = 0)
    @capacity = capacity
    if initial_water_volume > capacity
      @volume = capacity
    else
      @volume = initial_water_volume
    end
  end

  def empty?
    @volume == 0
  end

  def fill(volume)
    if capacity < (@volume + volume)
      @volume = capacity
    else
      @volume += volume
    end
  end

  def drain(volume)
    if volume <= @volume
      @volume -= volume.to_i
    else
      @volume = 0
    end
  end

end
