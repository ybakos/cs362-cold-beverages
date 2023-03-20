require_relative '../lib/chiller'

describe 'A chiller' do

  chiller = Chiller.new
  it 'should start off' do
    expect(chiller.power).to be :off
  end

  it 'should be turned on' do
    chiller.turn_on
    expect(chiller.power).to be :on
  end

  it 'should start empty' do
    expect(chiller).to be_empty
  end

  it 'should be able to have items added to it' do
    item = Item.new("pizza", 5)
    chiller.add(item)
    expect(chiller).to_not be_empty
  end

  it 'should be able to calculate the remaining capacity' do
    expect(chiller.remaining_capacity).to eq(95)
  end

  it 'should be able to set the current temperature level' do
    chiller.set_level(3)
    expect(chiller.temperature).to eq(55)
  end

end
