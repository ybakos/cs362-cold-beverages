require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  
  it 'exists' do
    WaterDispenser.new('Fake')
  end

  it 'has a reservoir' do
    dispenser = WaterDispenser.new('Fake')
    expect(dispenser.reservoir).to eq('Fake')
  end

end
