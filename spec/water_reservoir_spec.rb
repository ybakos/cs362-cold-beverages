require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:reservoir) {WaterReservoir.new}

  it 'has a capacity' do
    expect(reservoir).to respond_to(:capacity)
  end

  it 'has a current water volume' do
    expect(reservoir).to respond_to(:current_water_volume)
  end
end
