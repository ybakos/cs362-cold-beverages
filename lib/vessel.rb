class Vessel
  attr_reader :volume, :name

  def initialize(name='FAKE', volume=100)
    @name = name
    @volume = volume
    @fill_level = 0
  end

  def empty?
    @fill_level == 0
  end

  def fill
    @fill_level = volume
  end
  
end
