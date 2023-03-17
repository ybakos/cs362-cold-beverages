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

  it 'can calculate its total capacity' do
    chiller = Chiller.new
    freezer = Freezer.new
    water_reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(water_reservoir)
    refrigerator = Refrigerator.new(chiller, freezer, water_reservoir, water_dispenser)
    
    expect(refrigerator.total_capacity).to eq(chiller.capacity + freezer.capacity)
  end

  it 'can calculate its remaining capacity' do
    chiller = Chiller.new
    freezer = Freezer.new
    water_reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(water_reservoir)
    refrigerator = Refrigerator.new(chiller, freezer, water_reservoir, water_dispenser)
    
    expect(refrigerator.remaining_capacity).to eq(chiller.remaining_capacity + freezer.remaining_capacity)
  end

  it 'can be turned on' do
    chiller = Chiller.new
    freezer = Freezer.new
    water_reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(water_reservoir)
    refrigerator = Refrigerator.new(chiller, freezer, water_reservoir, water_dispenser)

    refrigerator.plug_in
    expect(refrigerator.power).to eq(:on)
    expect(refrigerator.chiller.power).to eq(:on)
    expect(refrigerator.freezer.power).to eq(:on)
  end

  it 'can be turned off' do
    chiller = Chiller.new
    freezer = Freezer.new
    water_reservoir = WaterReservoir.new
    water_dispenser = WaterDispenser.new(water_reservoir)
    refrigerator = Refrigerator.new(chiller, freezer, water_reservoir, water_dispenser)

    refrigerator.unplug
    expect(refrigerator.power).to eq(:off)
    expect(refrigerator.chiller.power).to eq(:off)
    expect(refrigerator.freezer.power).to eq(:off)
  end
end
