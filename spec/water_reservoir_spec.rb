require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

  it 'exists' do
    WaterReservoir.new()
  end

  it 'has capacity' do
    reservoir = WaterReservoir.new()
    expect(reservoir).to respond_to(:capacity)
  end

  it 'is initially empty' do
    reservoir = WaterReservoir.new()
    expect(reservoir).to be_empty
  end

  it 'is no longer empty when we fill it' do
    reservoir = WaterReservoir.new(100, 0)
    reservoir.fill
    expect(reservoir).to_not be_empty
  end

  it 'drains volume entered' do
    reservoir = WaterReservoir.new(0, 100)
    reservoir.drain(100)
    expect(reservoir).to be_empty
  end

end
