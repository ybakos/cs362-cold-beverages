class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
   if reservoir.drain(vessel.volume).negative?
    puts "Danger The dispenser has reached 0"
    @volume = 0
   end
  end

end
