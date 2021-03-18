class Vessel
  attr_reader :name, :volume

  def initialize(name = 'FAKE', volume = 100)
    @name = name
    @volume = volume
    @amount_filled = 0
  end

  def empty?
    @amount_filled == 0
  end

  def fill(amount = @volume)
    @amount_filled += amount
  end

end
