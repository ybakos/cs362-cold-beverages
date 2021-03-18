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
  
  it 'knows if the reservoir is not empty' do
    reservoir.current_water_volume = 10
    expect(reservoir.empty?).to be_falsey
  end

  it 'knows if the reservoir is empty' do
    reservoir.current_water_volume = 0
    expect(reservoir.empty?).to be_truthy
  end

  it 'fills the reservoir to a given capacity' do
    reservoir.fill
    expect(reservoir.current_water_volume).to eq(reservoir.capacity)
  end

end
