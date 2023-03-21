class Vessel
  attr_reader :volume, :name

  def initialize(name, volume)
    @name = name
    @volume = volume
    @empty = true
  end

end
