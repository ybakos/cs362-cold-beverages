class Vessel
  attr_reader :name, :volume

  def initialize(name, volume)
    @name = name
    @volume = 0
  end

  def empty?
    if @volume == 0
      true
    else
      false
    end
  end

end
