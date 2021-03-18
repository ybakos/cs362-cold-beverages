require_relative '../lib/item'

describe 'An item of food or a beverage' do
  
  it 'exists' do
    Item.new('Fake', 100)
  end


end
