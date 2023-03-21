require_relative '../lib/vessel'

describe 'A vessel for holding liquid' do

  it 'has a name and volume' do
    vessel = Vessel.new('FAKE', 100)
    expect(vessel.name ).to eq('FAKE')
    expect(vessel.volume).to eq(100)
  end

  it 'is initially empty' do
    vessel = Vessel.new('FAKE',100)
    expect(vessel.fluid).to eq(0) #removed be empty
  end

  it 'is no longer empty when we fill it' do
    vessel = Vessel.new('FAKE', 100)
    vessel.fill
    expect(vessel.fluid).to_not eq(0) #removed be empty
  end
end
