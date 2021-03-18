require_relative '../lib/chiller'

describe 'A chiller' do
  let(:chiller) {Chiller.new}
  before(:all) {ROOM_TEMPERATURE = 70}

  it 'has a capacity' do
    expect(chiller).to respond_to(:capacity)
  end

  it 'has a temperature' do
    expect(chiller).to respond_to(:temperature)
  end

  it 'can be turned on' do
    chiller.turn_on
    expect(chiller.power).to eq(:on)
  end

  it 'can be turned off' do
    chiller.turn_on
    chiller.turn_off
    expect(chiller.power).to eq(:off)
  end

  it 'has a reduced capacity after adding an item' do
    item_volume = 1
    item = double()
    allow(item).to receive(:volume).and_return(item_volume)
    initial_capacity = chiller.capacity
    chiller.add(item)
    expect(chiller.remaining_capacity).to eq(initial_capacity - item_volume)
  end

  it 'can have its level set' do
    level = 30
    expected_temp = ROOM_TEMPERATURE - level * 5
    chiller.set_level(level)
    expect(chiller.temperature).to eq(expected_temp)
  end

end
