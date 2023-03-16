require_relative 'item'

class Vessel < Item

  def empty?
    @volume == 0
  end

  def fill(v)
    @volume += v
  end

end
