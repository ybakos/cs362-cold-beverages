class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    if check_reservoir_volume() == 1
      reservoir.drain(vessel.volume)
    end
  end

  def check_reservoir_volume()
    if @reservoir.empty?
      puts 'reservoir is empty, nothing dispensed'
    else
      return 1
    end

  end
end
