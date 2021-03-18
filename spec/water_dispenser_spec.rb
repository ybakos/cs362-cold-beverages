require_relative '../lib/water_dispenser'
require_relative '../lib/vessel'

describe 'A water dispenser' do

	let(:dispenser) { WaterDispenser.new('FAKE') }

  it 'exists' do
		dispenser
	end

	it 'has a reservoir' do
		expect(dispenser.reservoir).to eq('FAKE')
	end

	describe '#dispense' do
		let(:vessel) { Vessel.new(volume=10) }

		# it 'decreases the reservoir volume' do
		# 	# vessel = double()
		# 	# allow(vessel).to receive(:volume) { 10 }
		# 	reservoir = double()
		# 	allow(reservoir).to receive(:current_water_volume)
		# 	allow(reservoir).to receive(:drain)
		# 	remaining_volume = reservoir.current_water_volume
		# 	expect(reservoir.drain(vessel)).to be < res
		# end

		# it 'fills the vessel' do
		# 	dispenser = double()
		# 	allow(dispenser).to receive(:reservoir) {}
		# 	allow(dispenser).to receive(:drain)
		# 	dispenser.drain(vessel)
		# 	expect(vessel).to_not be_empty
		# end
	end

end
