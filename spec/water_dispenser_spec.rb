require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  let(:water_dispenser) do WaterDispenser.new
  end

  it 'has a reservoir' do
    expect(water_dispenser).to respond_to(:reservoir)
  end

  it 'drains from the vessel' do
    # expect(water_dispenser.drain).to eq(vessel.volume)
  end
end
