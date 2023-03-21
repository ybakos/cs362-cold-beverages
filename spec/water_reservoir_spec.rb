require_relative '../lib/water_reservoir'

describe 'A water reservoir' do


    it "has water" do
        reservoir = WaterReservoir.new(10,5)
        expect(reservoir.current_water_volume).to eq(5)

    end

    it "has capacity" do
        reservoir = WaterReservoir.new(10,5)
        expect(reservoir.capacity).to eq(10)

    end


    it "can tell if its empty" do
        reservoir = WaterReservoir.new
        expect(reservoir.empty?).to eq(true)
    end


    it "can fill the water resevoir" do
        reservoir = WaterReservoir.new
        reservoir.fill()
        expect(reservoir.current_water_volume).to eq(10)
    end

    it "can drain the water resevoir" do
        reservoir = WaterReservoir.new(10,10)
        vessel = Vessel.new('FAKE', 5)
        reservoir.drain(vessel, 5)
        expect(reservoir.current_water_volume).to eq(5)
    end

end
