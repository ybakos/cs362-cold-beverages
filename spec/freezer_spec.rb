require_relative '../lib/freezer'

describe 'A freezer' do
  it 'has a exits' do
    expect(Freezer)
  end

  it 'symbolys' do
    freezer = Freezer.new()
    expect(freezer).to respond_to(:capacity)
    expect(freezer).to respond_to(:temperature)
  end

  it 'temperature' do
    freezer = Freezer.new()
    expect(freezer.temperature).to eq(70)
  end

  it 'set level' do
    freezer = Freezer.new()
    freezer.set_level(5)
    expect(freezer.temperature).to eq(20)
  end

end
