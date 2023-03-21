require_relative '../lib/item'

describe 'An item of food or a beverage' do

    it "has a name" do
        item = Item.new("Cola", 12)
        expect(item.name).to eq("Cola")

    end

    it "has a volume" do
        item = Item.new("Cola", 12)
        expect(item.volume).to eq(12)
    end

end
