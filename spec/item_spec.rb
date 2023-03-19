require_relative '../lib/item'

describe 'An item of food or a beverage' do

  it 'has a name' do
    pizza = Item.new('pizza', 5)
    expect(pizza.name).to eq('pizza')
  end

  it 'has a volume' do
    pizza = Item.new('pizza', 5)
    expect(pizza.volume).to eq(5)
  end

end
