class Vessel
  attr_reader :volume, :name

  def initialize(name, volume)
    @name = name
    @volume = volume
    @empty = true
  end

  def empty?
    @empty
  end

  def fill
    @empty = false
  end
end
