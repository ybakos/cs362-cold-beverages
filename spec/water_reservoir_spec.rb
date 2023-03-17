require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

  it 'has a default capacity and current water volume' do
    water_reservoir = WaterReservoir.new
    expect(water_reservoir.capacity).to eq(10)
    expect(water_reservoir.current_water_volume).to eq(0)
  end

  it 'can have its default parameters overridden upon creation' do
    water_reservoir = WaterReservoir.new(20, 10)
    expect(water_reservoir.capacity).to eq(20)
    expect(water_reservoir.current_water_volume).to eq(10)
  end

  it 'is empty upon creation' do
    water_reservoir = WaterReservoir.new
    expect(water_reservoir.empty?).to eq(true)
  end

  it 'is filled to capacity' do
    water_reservoir = WaterReservoir.new
    water_reservoir.fill
    expect(water_reservoir.current_water_volume).to eq(water_reservoir.capacity)
  end

  it 'is not empty after being filled' do
    water_reservoir = WaterReservoir.new
    water_reservoir.fill
    expect(water_reservoir.empty?).to eq(false)
  end

  it 'can be drained by a given volume' do
    water_reservoir = WaterReservoir.new(20, 10)
    water_reservoir.drain(5)
    expect(water_reservoir.current_water_volume).to eq(5)
  end

  it 'will not drain more than it has, but all that is left' do
    water_reservoir = WaterReservoir.new(20, 3)
    water_reservoir.drain(5)
    expect(water_reservoir.current_water_volume).to eq(0)
  end
  
end
