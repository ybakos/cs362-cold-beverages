require_relative '../lib/item'

describe 'An item of food or a beverage' do
  it 'item exists' do
    Item.new("FAKE","FAKE")
  end
end
