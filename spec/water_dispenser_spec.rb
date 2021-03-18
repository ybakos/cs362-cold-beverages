require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
    let(:wd) { WaterDispenser.new( fake_reservoir ) }
    
    class Reservoir
        def drain
            "FakeVolume"
        end
    end

    it 'exists' do
        skip
        wd
    end

    it 'dispenses' do
        skip
        expect(wd.dispense).to eq("FakeVolume")
    end

    
    
end
