require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

  it 'has a reservoir' do
    water_dispenser = WaterDispenser.new(100)
    expect(water_dispenser.reservoir).to eq(100)
  end

end
