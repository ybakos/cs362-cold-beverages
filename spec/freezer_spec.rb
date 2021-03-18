require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) {Freezer.new}
  before(:all) {ROOM_TEMPERATURE = 70}
  
  it 'has a capacity' do
    expect(freezer).to respond_to(:capacity)
  end

  it 'has a temperature' do
    expect(freezer).to respond_to(:temperature)
  end

  it 'is initially off' do
    expect(freezer.power).to eq(:off)
  end

  it 'can be turned on' do
    freezer.turn_on
    expect(freezer.power).to eq(:on)
  end

  it 'can be turned off' do
    freezer.turn_on
    freezer.turn_off
    expect(freezer.power).to eq(:off)
  end

  it 'has a reduced capacity after adding an item' do
    item_volume = 1
    item = double()
    allow(item).to receive(:volume).and_return(item_volume)
    initial_capacity = freezer.capacity
    freezer.add(item)
    expect(freezer.remaining_capacity).to eq(initial_capacity - item_volume)
  end

  it 'can have its level set' do
    level = 30
    expected_temp = ROOM_TEMPERATURE - level * 10
    freezer.set_level(level)
    expect(freezer.temperature).to eq(expected_temp)
  end

end
