require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

  water_reservoir = WaterReservoir.new
  it 'should be empty when initialized' do
    expect(water_reservoir).to be_empty
  end

  it 'can be fully filled' do
    water_reservoir.fill
    expect(water_reservoir.volume).to eq(10)
  end

  it 'can be drained' do
    water_reservoir.drain(water_reservoir.volume)
    expect(water_reservoir.volume).to eq(0)
  end

end
