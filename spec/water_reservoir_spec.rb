require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  capacity = 15
  initial_water_volume = 0
  let(:reservoir) { WaterReservoir.new(capacity, initial_water_volume) }

  it 'has a capacity' do
    expect(reservoir.capacity).to eq(capacity)
  end

  it 'has an initial volume' do
    expect(reservoir.current_water_volume).to eq(initial_water_volume)
  end

end
