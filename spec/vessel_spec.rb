require_relative '../lib/vessel'

describe 'A vessel for holding liquid' do

  it 'has a name and volume' do
    vessel = Vessel.new
    expect(vessel.name).to eq('FAKE')
    expect(vessel.volume).to eq(100)
  end

  it 'is initially empty' do
    vessel = Vessel.new('FAKE', 100)
    expect(vessel.empty?).to be_truthy
  end

  it 'is no longer empty when we fill it' do
    vessel = Vessel.new('FAKE', 100)
    vessel.fill(5)
    expect(vessel.empty?).to_not be_falsey
  end
end
