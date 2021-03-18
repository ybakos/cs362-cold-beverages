require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

    it 'cannot drain passed a 0 volume' do 
        water_reservoir = WaterReservoir.new(10,10)
        water_reservoir.drain(13)
        expect(water_reservoir.current_water_volume).to eq(10)
    end    
end
