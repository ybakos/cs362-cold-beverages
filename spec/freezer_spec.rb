require_relative '../lib/freezer'

describe 'A freezer' do

  it 'has a capacity' do
    freezer = Freezer.new
    expect(freezer.capacity).to eq(100)
    expect(freezer.temperature).to eq(70)
    expect(freezer.power).to eq(:off)
    expect(freezer.contents).to be_empty
  end

  it 'can be turned on' do
    freezer = Freezer.new
    freezer.turn_on
    expect(freezer.power).to eq(:on)
  end

  it 'can be turned off' do
    freezer = Freezer.new
    freezer.turn_off
    expect(freezer.power).to eq(:off)
  end

  it 'can have items added to it' do
    item = Item.new('FAKE', 5)
    freezer = Freezer.new
    freezer.add(item)
    expect(freezer.contents).to contain_exactly(item)
  end

  it 'can calculate its own remaining capacity' do
    item = Item.new('FAKE', 5)
    freezer = Freezer.new
    freezer.add(item)
    expect(freezer.remaining_capacity).to eq(95)
  end

  it 'can set its own temperature level' do
    freezer = Freezer.new
    freezer.set_level(2)
    expect(freezer.temperature).to eq(50)
  end
  
end
