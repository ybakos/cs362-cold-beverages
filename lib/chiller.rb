require_relative 'refrigerator_block'

class Chiller < RefrigeratorBlock

  def set_level(level)
    super(level, 5)
  end
end