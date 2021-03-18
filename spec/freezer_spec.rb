require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) { Freezer.new }

  it 'has a default capacity of 100' do
    expect(freezer.capacity).to eq(100)
  end

  it 'can turn on the power' do
    freezer.turn_on
    expect(freezer.power).to eq(:on)
  end

  it 'can turn off the power' do
    freezer.turn_off
    expect(freezer.power).to eq(:off)
  end

  it 'can add an item to the freezer' do
    item = double
    allow(item).to receive('volume').and_return(5)
    freezer.add(item)
    expect(freezer.remaining_capacity).to_not eq(freezer.capacity)
  end

  it 'knows the remaining capacity of the freezer' do
    expect(freezer.remaining_capacity).to eq(freezer.capacity)
  end

  it 'can set the temperature of the freezer' do
    freezer.set_level(5)
    expect(freezer.temperature).to eq(70 - 5 * 10)
  end
end
