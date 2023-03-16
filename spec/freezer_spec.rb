require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) { Freezer.new }

  it 'has a capacity and temperature' do
    expect(freezer.capacity).to eq(100)
    expect(freezer.temperature).to eq(70)
  end

  it 'can turn its power on' do
    freezer.turn_on
    expect(freezer.power).to eq(:on)
  end

  it 'can turn its power off' do
    freezer.turn_off
    expect(freezer.power).to eq(:off)
  end

  it 'can add items' do
    freezer.add('dumplings')
    freezer.add('Beyond Brats')
    expect(freezer.contents).to eq(['dumplings', 'Beyond Brats'])
  end
  
end
