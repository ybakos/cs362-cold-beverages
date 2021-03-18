require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) {Freezer.new}
  
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

end
