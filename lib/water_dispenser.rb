class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    water = reservoir.current_water_volume - vessel.get_volume
    if water < 0
      water = reservoir.current_water_volume
    else
      water = vessel.get_volume
    end
    vessel.fill
    reservoir.drain(vessel.volume)

  end

end
