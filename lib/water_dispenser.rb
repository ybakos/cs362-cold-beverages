class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def reservoir
    @reservoir
  end

  def dispense(vessel)
    reservoir.drain(vessel, vessel.volume)
  end

end
