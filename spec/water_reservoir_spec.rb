require_relative '../lib/water_reservoir'

describe 'A water reservoir' do

  let(:reservoir) { WaterReservoir.new(10, 0) }

	it 'exists' do
		reservoir
	end

	it 'has a capacity' do
		expect(reservoir.capacity).to eq(10)
	end

	it 'has a current_water_volume' do
		expect(reservoir.current_water_volume).to eq(0)
	end

	describe 'emptiness' do
		before do
			reservoir = WaterReservoir.new(20, 0)
		end

		it 'is initially empty' do
			expect(reservoir).to be_empty
		end

		it 'has a current_water_volume equal to capacity' do
			reservoir.fill
			expect(reservoir.current_water_volume).to eq(reservoir.capacity)
		end

		it 'is no longer empty when we fill it' do
			reservoir.fill
			expect(reservoir).to_not be_empty
		end
	end

end
