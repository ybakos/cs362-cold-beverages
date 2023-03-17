require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

  it 'has a default capacity and current water volume' do
    water_reservoir = WaterReservoir.new
    expect(water_reservoir.capacity).to eq(10)
    expect(water_reservoir.current_water_volume).to eq(0)
  end

  it 'can have its default parameters overridden upon creation' do
    water_reservoir = WaterReservoir.new(20, 10)
    expect(water_reservoir.capacity).to eq(20)
    expect(water_reservoir.current_water_volume).to eq(10)
  end

end
