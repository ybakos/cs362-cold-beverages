require_relative 'spec_helper'
require_relative '../lib/refrigerator'
require_relative '../lib/chiller'
require_relative '../lib/freezer'
require_relative '../lib/water_dispenser'
require_relative '../lib/water_reservoir'

describe 'A refrigerator' do
  let(:refrigerator) {
    Refrigerator.new(
      Chiller.new,
      Freezer.new,
      WaterReservoir.new,
      WaterDispenser.new
    )}

end
