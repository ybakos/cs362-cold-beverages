require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

    it "has a reservoir" do
        reservoir = WaterReservoir.new() #could be faked instead?
        water_dispenser = WaterDispenser.new(reservoir)
        expect(water_dispenser.reservoir).to eq(reservoir)
    end

    it "can dispense from reservoir" do
        vessel = Vessel.new('FAKE', 100) #create a vessle with volume 100
        reservoir = WaterReservoir.new(100, 100) #create a water resevoir with volume 100 and water 100
        water_dispenser = WaterDispenser.new(reservoir) #fill water dispenser with resevoir
        water_dispenser.dispense(vessel) #dispense water from dispenser into vessel
        expect(water_dispenser.reservoir.current_water_volume).to eq(0) #expect water to be drained out
    end

end
