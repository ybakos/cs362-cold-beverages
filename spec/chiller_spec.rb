require_relative '../lib/chiller'

describe 'A chiller' do

  it 'has a capacity' do
    chiller = Chiller.new
    expect(chiller.capacity).to eq(100)
    expect(chiller.temperature).to eq(70)
    expect(chiller.power).to eq(:off)
    expect(chiller.contents).to be_empty
  end

  it 'can be turned on' do
    chiller = Chiller.new
    chiller.turn_on
    expect(chiller.power).to eq(:on)
  end

  it 'can be turned off' do
    chiller = Chiller.new
    chiller.turn_off
    expect(chiller.power).to eq(:off)
  end
  
end
