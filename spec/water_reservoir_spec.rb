require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  it 'has a exits' do
    expect(WaterReservoir)
  end

  it 'has a capacity and current water volume' do
    reservoir = WaterReservoir.new
    expect(reservoir).to respond_to(:capacity)
    expect(reservoir).to respond_to(:current_water_volume)
  end

  it 'to be empty' do
    reservoir = WaterReservoir.new
    expect(reservoir).to be_empty
  end

  it 'to not be empty' do
    reservoir = WaterReservoir.new(10,10)
    expect(reservoir).to_not be_empty
  end

  it 'to drain' do
    reservoir = WaterReservoir.new(10,10)
    reservoir.drain(5)
    expect(reservoir.current_water_volume).to eq(5)
  end

end
