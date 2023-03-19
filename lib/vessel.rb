class Vessel
  attr_reader  :name, :volume

  def initialize(name, volume)
    @name = name
    @volume = volume
    @contents = []
  end

  def empty?
    @contents.empty?
  end

  

end
