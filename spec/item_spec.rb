require_relative '../lib/item'

describe 'An item of food or a beverage' do
    item = Item.new("Fake", 100)

    it 'has a name' do
      expect(item).to respond_to(:name)
    end

end
