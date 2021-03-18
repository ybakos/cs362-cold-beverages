require_relative '../lib/item'

describe 'An item of food or a beverage' do
  name = 'FAKE'
  volume = 100
  let(:item) { Item.new(name, volume) }
  it 'has a name' do
    expect(item.name).to eq(name)
  end

  it 'has a volume' do
    expect(item.volume).to eq(volume)
  end

end
