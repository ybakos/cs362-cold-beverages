class Vessel
  attr_reader :volume, :name

  def initialize(name, volume)
    @name = name
    @volume = volume
  end

  def empty?
    return true
  end

end
