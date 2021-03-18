class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    vol = reservoir.drain(vessel.volume)
    vessel.fill(vol)
  end

end
