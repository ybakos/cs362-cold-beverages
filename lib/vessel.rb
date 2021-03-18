class Vessel
  attr_reader :volume, :name

  def initialize(name, volume)
    @name = name
    @volume = volume
  end

  def empty?
    if @volume == 0
      TRUE
    else
      FALSE
    end
  end

  def fill
  end

end
