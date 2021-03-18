require_relative '../lib/vessel'

describe 'A vessel for holding liquid' do

  it 'has a name and volume' do
    vessel = Vessel.new('FAKE', 100)
    expect(vessel.name).to eq('FAKE')
    expect(vessel.volume).to eq(100)
  end

  it 'is initially empty' do
    vessel = Vessel.new('FAKE', 100)
    expect(vessel).to be_empty
  end

  it 'is no longer empty when we fill it' do
    vessel = Vessel.new('FAKE', 100)
    vessel.fill
    expect(vessel).to_not be_empty
  end

  
  it 'fills vessel' do
    skip
    dispenser= WaterDispenser.new(5)
    vessel = Vessel.new('FAKE', 5)
    dispenser.fill(vessel)
    expect(dispenser.reservoir).to eq(10)
  end
end
