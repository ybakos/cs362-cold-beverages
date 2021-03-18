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
end
