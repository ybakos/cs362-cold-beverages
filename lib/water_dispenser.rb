class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    water = reservoir.current_water_volume - vessel.volume
    if water < 0
      water = reservoir.current_water_volume
    else
      water = vessel.volume
    end
    vessel.volume = water
    reservoir.drain(vessel.volume)

  end

end
