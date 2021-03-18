require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  
  
  it 'exists' do
    WaterDispenser.new('Fake')
  end

  it 'has a reservoir' do
    dispenser = WaterDispenser.new('Fake')
    expect(dispenser.reservoir).to eq('Fake')
  end

  it 'dispenses vessel volume' do
    vessel = Vessel.new('Fake', 2)
    reservoir = WaterReservoir.new()
    dispenser = WaterDispenser.new(reservoir)
    dispenser.dispense(vessel)
    expect(vessel).to_not be_empty
  end

end
