class Vessel
  attr_reader :volume, :name

  def initialize(name, volume)
    @name = name
    @volume = volume
  end

  def empty?
    @volume == 0
  end

  def fill
  end

end
