class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    if !reservoir.empty?
      reservoir.drain(vessel.volume)
      vessel.fill(vessel.volume)
    end
  end

end
