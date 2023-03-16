class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    previous_volume = reservoir.current_water_volume
    reservoir.drain(vessel.volume)
    volume = reservoir.current_water_volume
    dispensed_volume = previous_volume - volume
    vessel.fill(dispensed_volume)
  end
end