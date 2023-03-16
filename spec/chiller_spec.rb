require_relative '../lib/chiller'

describe 'A chiller' do
  let(:chiller) { Chiller.new }

  it 'has a capacity and temperature' do
    expect(chiller.capacity).to eq(100)
    expect(chiller.temperature).to eq(70)
  end

end
