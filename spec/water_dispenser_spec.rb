require_relative '../lib/water_dispenser'
require_relative '../lib/vessel.rb'

describe 'A water dispenser' do

  it 'has a reservoir' do
    water_dispenser = WaterDispenser.new(100)
    expect(water_dispenser.reservoir).to eq(100)
  end

  it 'can dispense to a vessel' do
    water_dispenser = WaterDispenser.new(100)
    vessel = Vessel.new(100)
    water_dispenser.dispense(vessel)
    expect(water_dispenser.reservoir).to be_empty
  end

end
