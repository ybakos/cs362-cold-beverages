require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  water_reservoir = WaterReservoir.new

  it 'exists' do
    WaterReservoir.new
  end

  it 'has a capacity' do
    expect(water_reservoir).to respond_to(:capacity)
  end

  it 'has a current_water_volume' do
    expect(water_reservoir).to respond_to(:current_water_volume)
  end

  it 'expects current_water_volume to be initialized to empty' do
    expect(water_reservoir).to be_empty
  end

  it 'expects fill to return the capacity' do
    expect(water_reservoir.fill).to eq(10)
  end
end
