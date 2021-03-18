require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  before do
    @res = WaterReservoir.new(10, 20)
  end

  it 'has a capacity and initial_water_volume' do
    expect(@res.capacity).to eq(10)
    expect(@res.initial_water_volume).to eq(20)
  end
end
