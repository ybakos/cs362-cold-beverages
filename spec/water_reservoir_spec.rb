require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

  it 'has a default capacity and current water volume' do
    water_reservoir = WaterReservoir.new
    expect(water_reservoir.capacity).to eq(10)
    expect(water_reservoir.current_water_volume).to eq(0)
  end

end
