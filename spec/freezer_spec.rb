require_relative '../lib/freezer'

describe 'A freezer' do

  it 'has a capacity' do
    freezer = Freezer.new
    expect(freezer.capacity).to eq(100)
  end
end
