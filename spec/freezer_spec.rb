require_relative '../lib/freezer'

describe 'A freezer' do

  freezer = Freezer.new

  it 'should start off' do
    expect(freezer.power).to be :off
  end

  it 'should be turned on' do
    freezer.turn_on
    expect(freezer.power).to be :on
  end

  it 'should start empty' do
    expect(freezer).to be_empty
  end

  it 'should be able to have items added to it' do
    item = Item.new("pizza", 5)
    freezer.add(item)
    expect(freezer).to_not be_empty
  end

  it 'should be able to calculate the remaining capacity' do
    expect(freezer.remaining_capacity).to eq(95)
  end

  it 'should be able to set the current temperature level' do
    freezer.set_level(3)
    expect(freezer.temperature).to eq(40)
  end

end
