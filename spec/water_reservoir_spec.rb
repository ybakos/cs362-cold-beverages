require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  water_reservoir = WaterReservoir.new

  it 'exists' do
    WaterReservoir.new
  end

  it 'has a capacity' do
    expect(water_reservoir).to respond_to(:capacity)
  end
end
