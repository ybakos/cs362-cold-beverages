require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) {Freezer.new}
  
  it 'has a capacity' do
    expect(freezer).to respond_to(:capacity)
  end

  it 'has a temperature' do
    expect(freezer).to respond_to(:temperature)
  end

  
end
