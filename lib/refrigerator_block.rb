class RefrigeratorBlock
  ROOM_TEMPERATURE = 70

  attr_reader :capacity, :temperature

  def initialize(capacity = 100)
    @capacity = capacity
    @temperature = ROOM_TEMPERATURE
    @power = :off
    @contents = []
  end

  def turn_on
    @power = :on
  end

  def turn_off
    @power = :off
  end

  def add(item)
    @contents << item
  end

  def remaining_capacity
    capacity - @contents.map(&:volume).reduce(:+).to_i
  end

  # @override in subclass
  def set_level(level, multiplier)
    @temperature = ROOM_TEMPERATURE - level * multiplier
  end

end