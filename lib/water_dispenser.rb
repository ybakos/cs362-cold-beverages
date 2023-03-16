class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    reservoir.drain(vessel.volume)
    vol = vessel.volume
    reservoir -= vol
    vessel.fill(vol)
  end

end
