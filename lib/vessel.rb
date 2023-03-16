class Vessel
  attr_reader :volume, :name, :fill_level

  def initialize(name='FAKE', volume=100)
    @name = name
    @volume = volume
    @fill_level = 0
  end

  def empty?
    @fill_level == 0
  end

  def fill(vol=volume)
    @fill_level = vol
  end

end
