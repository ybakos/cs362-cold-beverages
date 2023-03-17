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
end
