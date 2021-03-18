require_relative '../lib/item'

describe 'An item of food or a beverage' do
  before do
    @item = Item.new('FAKE', 200)
  end

  it 'has a name and volume' do
    expect(@item.name).to eq('FAKE')
    expect(@item.volume).to eq(200)
  end

end
