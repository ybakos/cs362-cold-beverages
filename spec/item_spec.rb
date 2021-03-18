require_relative '../lib/item'

describe 'An item of food or a beverage' do
  item = Item.new("Fake", 100)

  it 'exists' do
    Item.new("Fake", 100)
  end

  it 'has a name' do
    expect(item).to respond_to(:name)
  end

  it 'has a volume' do
    expect(item).to respond_to(:volume)
  end

end
