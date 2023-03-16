require_relative 'item'

class Vessel < Item

  def fill(v)
    @volume += v
  end
end