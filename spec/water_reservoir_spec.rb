require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

  water_reservoir = WaterReservoir.new

  it 'should initialize with a volume at most the same value as capacity' do
    wr = WaterReservoir.new(10, 20)
    expect(wr.volume).to eq(10)
    expect(wr.volume).to_not eq(20)
  end
  
  it 'should be empty when initialized' do
    expect(water_reservoir).to be_empty
  end

  it 'can be fully filled' do
    water_reservoir.fill(10)
    expect(water_reservoir.volume).to eq(10)
  end

  it 'cannot be filled beyond full' do
    water_reservoir.drain(water_reservoir.volume)
    water_reservoir.fill(200)
    expect(water_reservoir.volume).to_not eq(200)
    expect(water_reservoir.volume).to eq(10)
  end

  it 'can be drained' do
    water_reservoir.drain(water_reservoir.volume)
    expect(water_reservoir.volume).to eq(0)
  end

  it 'can be drained but will never be negative' do
    water_reservoir.fill(10)
    water_reservoir.drain(5)
    expect(water_reservoir.volume).to eq(5)
    water_reservoir.drain(10)
    expect(water_reservoir.volume).to_not eq(-5)
    expect(water_reservoir.volume).to eq(0)
  end

end
