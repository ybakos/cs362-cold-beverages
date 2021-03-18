require_relative '../lib/item'

describe 'An item of food or a beverage' do
  let(:item) { Item.new("FAKE",100) }
  it 'item exists' do
    item
  end

  it 'item has name' do
    expect(item).to respond_to(:name)
  end
end
