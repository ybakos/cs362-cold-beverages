require_relative '../lib/refrigerator'

describe 'A refrigerator' do

  it 'exists' do
    chiller = Chiller.new
    freezer = Freezer.new
    water_reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(water_reservoir)
    refrigerator = Refrigerator.new(chiller, freezer, water_reservoir, water_dispenser)
  end

  it 'can chill an item' do
    chiller = Chiller.new
    freezer = Freezer.new
    water_reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(water_reservoir)
    refrigerator = Refrigerator.new(chiller, freezer, water_reservoir, water_dispenser)
    
    item = Item.new('FAKE', 5)
    refrigerator.chill(item)
    expect(refrigerator.chiller.contents).to contain_exactly(item)
  end

  it 'can freeze an item' do
    chiller = Chiller.new
    freezer = Freezer.new
    water_reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(water_reservoir)
    refrigerator = Refrigerator.new(chiller, freezer, water_reservoir, water_dispenser)
    
    item = Item.new('FAKE', 5)
    refrigerator.freeze(item)
    expect(refrigerator.freezer.contents).to contain_exactly(item)
  end
  
end
