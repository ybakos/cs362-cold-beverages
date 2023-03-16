require_relative '../lib/chiller'

describe 'A chiller' do
  let(:chiller) { Chiller.new }
  let(:bagels) { Item.new('Bagels', 6) }
  let(:oat_milk) { Item.new('OatMilk', 22) }

  it 'has a capacity and temperature' do
    expect(chiller.capacity).to eq(100)
    expect(chiller.temperature).to eq(70)
  end

  it 'can turn power on' do
    chiller.turn_on
    expect(chiller.power).to eq(:on)
  end

  it 'can turn power off' do
    chiller.turn_off
    expect(chiller.power).to eq(:off)
  end

  it 'can add items' do
    chiller.add(bagels)
    chiller.add(oat_milk)
    expect(chiller.contents).to eq([bagels, oat_milk])
  end

end
