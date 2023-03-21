require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:water_reservoir) { WaterReservoir.new }

  it 'has a capacity and current water volume' do
    expect(water_reservoir.capacity).to be_truthy
    expect(water_reservoir.current_water_volume).to be_truthy
  end

  it 'has an initial capacity of 10' do
    expect(water_reservoir.capacity).to be(10)
  end

  it 'has an initial water volume of 0' do
    expect(water_reservoir.current_water_volume).to be(0)
  end
end
