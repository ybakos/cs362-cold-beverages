class Vessel
  attr_reader :volume
  attr_reader :name

  def initialize(name = "FAKE", volume = 100)
    @name = name
    @volume = volume
  end

  def empty?
    if self.name = "FAKE"
      if self.volume = 100
        empty = true
      end
    end
  end

  def fill
    !empty
  end
end
