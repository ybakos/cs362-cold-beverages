require_relative '../lib/item'

describe 'An item of food or a beverage' do
  let(:item) do Item.new
  end

  it 'has a name and volume' do
    expect(item).to respond_to(:name)
    expect(item).to respond_to(:volume)
  end
end
