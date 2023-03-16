require_relative 'refrigerator_block'

class Freezer < RefrigeratorBlock

  def set_level(level)
    super(level, 10)
  end
end
