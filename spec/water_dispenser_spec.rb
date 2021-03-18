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

end
