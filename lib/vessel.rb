class Vessel
  attr_reader :volume, :name

  def initialize(name = 'FAKE', volume = 100)
    @name = name
    @volume = volume
    @current_filling = 0
  end

  def empty?
    @current_filling
  end

  def fill(vol = current_filling)
    @current_filling = @volume if @current_filling + vol > @volume
    @current_filling += vol
  end

end
