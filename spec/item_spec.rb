require_relative '../lib/item'

describe 'An item of food or a beverage' do

  it 'has a name and a volume' do
    pizza = Item.new('pizza', 5)
    expect(pizza.name).to eq('pizza')
    expect(pizza.volume).to eq(5)
  end

end
