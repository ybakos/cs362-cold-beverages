class Vessel
  attr_reader :volume, :name, :empty

  def initialize(name, volume)
    @name = name
    @volume = volume
    @empty = true
  end

  def empty?
    return @empty
  end

  def fill
    @empty = false
  end

end
