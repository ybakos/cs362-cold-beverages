require_relative '../lib/chiller'

describe 'A chiller' do
  let(:chiller) { Chiller.new }

  it 'has a default capacity of 100' do
    expect(chiller.capacity).to eq(100)
  end

  it 'can turn on the power' do
    chiller.turn_on
    expect(chiller.power).to eq(:on)
  end

  it 'can turn off the power' do
    chiller.turn_off
    expect(chiller.power).to eq(:off)
  end

  it 'can add an item to the chiller' do
    item = double
    allow(item).to receive('volume').and_return(5)
    chiller.add(item)
    expect(chiller.remaining_capacity).to_not eq(chiller.capacity)
  end

  it 'knows the remaining capacity of the chiller' do
    expect(chiller.remaining_capacity).to eq(chiller.capacity)
  end

  it 'can set the temperature of the chiller' do
    chiller.set_level(5)
    expect(chiller.temperature).to eq(70 - 5 * 5)
  end

end
