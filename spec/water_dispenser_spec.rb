require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  before do
    @res = WaterReservoir.new
    @dispenser = WaterDispenser.new(@res)
    @vessel = Vessel.new("fake", 100)
  end

  it 'has a resevoir' do
    expect(@dispenser.reservoir).to eq(@res)
  end

  it 'despenses water in a vessel' do
    expect(@dispenser.dispense(@vessel)).to eq(0)
  end
end
