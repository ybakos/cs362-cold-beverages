class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    amount_dispensed = reservoir.drain(vessel.volume)
    vessel.fill(amount_dispensed)
  end

end
