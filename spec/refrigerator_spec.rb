require_relative '../lib/refrigerator'

describe 'A refrigerator' do

end

class RefrigeratorTest < Refrigerator
  attr_reader :power

  def initialize(chiller, freezer, water_dispenser, water_reservoir)
    super
  end

  # @todo remove when ControlPanels are implemented
  def control_panel
    true
  end
end
