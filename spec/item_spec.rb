require_relative '../lib/item'

describe 'An item of food or a beverage' do
    let(:item) { Item.new("fake", 0) }
    
    it 'has a name' do
        item
        expect(item).to respond_to(:name)
    end

    it 'has a volume' do
        item
        expect(item).to respond_to(:volume)
    end

    

end
