class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    #if reservoir < vessel.volume
      puts('not enough water. Resevoir only has: ', reservoir)
    #  return
  #  end   
    reservoir.drain(vessel.volume)
  end

  def fill(vessel)
    vessel.fill
    vessel.volume = vessel.volume + reservoir
  end  
end
