class Vessel
  attr_reader :volume

  def initialize(name='FAKE', volume=100)
    @name = name
    @volume = volume
    @be_empty = true
  end

  def name
    @name
  end

  def volume
    @volume
  end

  def fill
    @be_empty = false
  end
  
  def empty?
    @be_empty
  end

end
