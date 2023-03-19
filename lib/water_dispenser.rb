class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def fill()
    reservoir.fill
  end

  def dispense(vessel)
    reservoir.drain(vessel.volume)
  end

end
