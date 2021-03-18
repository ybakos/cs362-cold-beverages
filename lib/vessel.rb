class Vessel
  attr_reader :name, :volume, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @volume = 0
  end

  def empty?
    volume == 0
  end

  def fill
    @volume = capacity
  end

end
