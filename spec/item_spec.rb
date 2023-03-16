require_relative 'spec_helper'
require_relative '../lib/item'

describe 'An item of food or a beverage' do

  it 'has a name and volume' do
    item = Item.new('foo', 1)
    expect(item.name).to eq('foo')
    expect(item.volume).to eq(1)
  end
end