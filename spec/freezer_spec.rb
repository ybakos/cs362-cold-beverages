require_relative '../lib/freezer'

describe 'A freezer' do

  it 'has a capacity and temperature' do
    freezer = Freezer.new
    expect(freezer.capacity).to eq(100)
    expect(freezer.temperature).to eq(70)
  end

  it 'can turn its power on' do
    freezer = Freezer.new
    freezer.turn_on
    expect(freezer.power).to eq(:on)
  end

end
