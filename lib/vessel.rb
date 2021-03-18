class Vessel
  attr_reader :volume, :name, :empty

  def initialize(name = "FAKE", volume = 100)
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
