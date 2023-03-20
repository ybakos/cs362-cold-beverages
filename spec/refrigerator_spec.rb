require_relative '../lib/refrigerator'
require_relative '../lib/chiller'
require_relative '../lib/freezer'
require_relative '../lib/water_dispenser'
require_relative '../lib/water_reservoir'

describe 'A refrigerator' do

  pizza = Item.new("pizza", 5)
  dreamsicle = Item.new('Dreamsicle', 1)
  chiller = Chiller.new
  freezer = Freezer.new
  water_reservoir = WaterReservoir.new
  water_dispenser = WaterDispenser.new(water_reservoir)

  refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir)

  # it 'adds item to chiller by chilling them' do
  #   refrigerator.chill(pizza)
  #   print(refrigerator.chiller)
  #   expect(refrigerator.chiller).to include?(pizza)
  # end

  it 'total capacity includes both the freezers and the chillers capacity' do
    expect(refrigerator.total_capacity).to eq(200)
  end

  # it '' do
  # end
end
