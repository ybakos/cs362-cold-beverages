require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

	let(:dispenser) { WaterDispenser.new('FAKE') }

  it 'exists' do
		dispenser
	end

	it 'has a reservoir' do
		expect(dispenser.reservoir).to eq('FAKE')
	end

	# describe '#dispense' do
	# 	it 'decreases the reservoir volume' do
	# 		vessel = double()
	# 		allow(vessel).to receive(:volume) { 10 }
	# 		reservoir = double()
	# 		allow(reservoir).to receive(:drain)
	# 		expect(reservoir.drain(vessel)).to eq(reservoir.volume-vessel.volume)

	# 	end
	# end

end
