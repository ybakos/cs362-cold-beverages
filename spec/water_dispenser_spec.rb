require_relative '../lib/water_dispenser'
require_relative '../lib/water_reservoir'

describe 'A water dispenser' do
  water_reservoir = WaterReservoir.new
  water_dispenser = WaterDispenser.new(water_reservoir)
  vessel = Vessel.new("nalgene", 2)

  it 'has a reservoir that starts with no water' do
    expect(water_dispenser.reservoir.volume).to eq(0)
  end

  it 'has a reservoir that can be filled with water' do
    water_dispenser.fill(vessel)
    expect(water_dispenser.reservoir.volume).to be >= 0
  end

  it 'can drain its reservoir' do
    water_dispenser.dispense(water_reservoir)
    expect(water_dispenser.reservoir.volume).to eq(0)
  end

end
