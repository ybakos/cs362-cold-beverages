require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  let(:fake_water_reservoir) { double('WaterReservoir') }
  let(:water_dispenser) { WaterDispenser.new(fake_water_reservoir) }
  let(:fake_vessel) { double('Vessel') }


  it 'has a reservoir' do
    expect(water_dispenser.reservoir).to be_truthy
  end

  describe 'can dispense it\'s reservoir' do

    before do
      expect(fake_water_reservoir).to receive(:drain).and_return(true)
      expect(fake_vessel).to receive(:volume).and_return(69)
    end

    it { expect(water_dispenser.dispense(fake_vessel)).to be_truthy }
  end

end
