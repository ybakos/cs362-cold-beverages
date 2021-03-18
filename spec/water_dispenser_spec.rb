require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

    it 'exists' do
        #exists
    end  

    it 'has a reservoir' do
        dispenser= WaterDispenser.new(5)
        expect(dispenser.reservoir).to eq(5)
    end

    it 'has 0 after dispense' do
        skip
        dispenser= WaterDispenser.new(5)
        vessel = Vessel.new('FAKE', 5)
        dispenser.dispense(vessel)
        expect(dispenser.reservoir).to eq(0)
    end
end
