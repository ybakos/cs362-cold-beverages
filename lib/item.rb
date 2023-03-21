class Item
  attr_reader :name, :volume

  def initialize(name, volume)
    @name = name
    @volume = volume
  end

  def name
    @name
  end

  def volume
    @volume
  end

end
