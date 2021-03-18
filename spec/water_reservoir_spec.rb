require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:reservoir) { WaterReservoir.new() }
  it 'dispenser exists' do
    reservoir
  end

  it 'reservoir has capacity' do
    expect(reservoir).to respond_to(:capacity)
  end


  it 'reservoir has water volume' do
    expect(reservoir).to respond_to(:current_water_volume)
  end

  it 'empty at first' do
    expect(reservoir.empty?).to be_empty
  end

end
