require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  before do
    @res = WaterReservoir.new(10, 20)
  end

  it 'has a capacity and initial_water_volume' do
    expect(@res.capacity).to eq(10)
    expect(@res.current_water_volume).to eq(20)
  end

  it 'is tests if empty' do
    expect(@res).to_not be_empty
  end
end
