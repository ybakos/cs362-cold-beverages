require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) { Freezer.new }
  let(:dumplings) { Item.new('dumplings', 50) }
  let(:beyond_brats) { Item.new('Beyond Brats', 4) }

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
    freezer.add(dumplings)
    freezer.add(beyond_brats)
    expect(freezer.contents).to eq([dumplings, beyond_brats])
  end

  it 'can calculate its remaining capacity' do skip
    freezer.add('dumplings')
    freezer.add('Beyond Brats')
    expect(freezer.remaining_capacity).to eq(98)
  end

end
