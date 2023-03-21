require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

  it 'has a reservoir' do
    fake_water_reservoir = double('WaterReservoir')
    water_dispenser = WaterDispenser.new(fake_water_reservoir)
    expect(water_dispenser.reservoir).to be_truthy
  end

end
