require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:water_reservoir) { WaterReservoir.new }

  it 'has a capacity and current water volume' do
    expect(water_reservoir.capacity).to be_truthy
    expect(water_reservoir.current_water_volume).to be_truthy
  end
end
