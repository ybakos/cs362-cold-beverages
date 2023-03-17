class Vessel
  attr_reader :name, :volume

  def initialize(name, volume)
    @name = name
    @volume = volume
    @be_empty = true
  end

  def fill
    @be_empty = false
  end
  
  def empty?
    @be_empty
  end

end
