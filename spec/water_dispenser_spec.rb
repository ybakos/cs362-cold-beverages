require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  it 'has a exits' do
    expect(WaterDispenser)
  end

  it 'has a resouvor' do
    reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(reservoir)
    expect(water_dispenser.reservoir).to eq(reservoir)
  end

  it 'can dispense' do
    reservoir = WaterReservoir.new(100)
    water_dispenser = WaterDispenser.new(reservoir)
    vessel = Vessel.new()
    expect(water_dispenser.dispense(vessel)).to eq(0)
  end

  it 'cant dispense past 0' do
    reservoir = WaterReservoir.new()
    water_dispenser = WaterDispenser.new(reservoir)
    vessel = Vessel.new()
    expect(water_dispenser.dispense(vessel)).to eq(0)
  end

end
