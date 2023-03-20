class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def fill(vessel)
    reservoir.fill(vessel.volume)
  end

  def dispense(vessel)
    reservoir.drain(vessel.volume)
  end

end
