require_relative '../lib/item'

describe 'An item of food or a beverage' do

  it 'has a exits' do
    expect(Item)
  end

  it 'has name and volume' do
    item = Item.new("foo",100)
    expect(item.name).to eq("foo")
    expect(item.volume).to eq(100)
  end
end
