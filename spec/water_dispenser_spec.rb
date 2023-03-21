require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  let(:fake_water_reservoir) { double('WaterReservoir') }
  let(:water_dispenser) { WaterDispenser.new(fake_water_reservoir) }
  let(:fake_vessel) { double('Vessel') }


  it 'has a reservoir' do
    expect(water_dispenser.reservoir).to be_truthy
  end

end
