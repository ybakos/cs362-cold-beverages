class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  # def dispense(vessel)
  #   reservoir.drain(vessel.volume)
  # end

  def dispense(vessel)
    if !reservoir.empty?
      reservoir.drain(vessel.volume)
    end
  end

end
