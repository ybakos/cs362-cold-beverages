require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:water_reservoir) { WaterReservoir.new }

  it 'has a capacity and current water volume' do
    expect(water_reservoir.capacity).to be_truthy
    expect(water_reservoir.current_water_volume).to be_truthy
  end

  it 'has an initial capacity of 10' do
    expect(water_reservoir.capacity).to be 10
  end

  it 'has an initial water volume of 0' do
    expect(water_reservoir.current_water_volume).to be 0
  end

  it 'can be empty' do
    water_reservoir.current_water_volume = 0

    expect(water_reservoir.empty?).to be true
  end

  it 'can be filled' do
    water_reservoir.fill

    expect(water_reservoir.empty?).to be false
  end
end
