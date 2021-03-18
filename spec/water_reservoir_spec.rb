require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:reservoir) {WaterReservoir.new}

  it 'has a capacity' do
    expect(reservoir).to respond_to(:capacity)
  end

  it 'has a current water volume' do
    expect(reservoir).to respond_to(:current_water_volume)
  end

  it 'is initially empty' do
    expect(reservoir).to be_empty
  end

  it 'can be filled' do
    reservoir.fill
    expect(reservoir.current_water_volume).to eq(reservoir.capacity)
  end

  it 'can be drained' do
    volume = 1
    reservoir.fill
    reservoir.drain(volume)
    expect(reservoir.current_water_volume).to eq(reservoir.capacity - volume)
  end

  it 'will not drain to a volume less than 0' do
    volume = reservoir.capacity + 1
    reservoir.fill
    reservoir.drain(volume)
    expect(reservoir.current_water_volume).to eq(0)
  end
  
end
