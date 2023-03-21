class Vessel
  attr_reader :volume

  def initialize(name, volume, fluid = 0)
    @name = name
    @volume = volume
    @fluid = fluid
  end

  def name
    @name
  end

  def volume
    @volume
  end

  def fluid
    @fluid
  end

  def fill
    @fluid = volume
  end

end
