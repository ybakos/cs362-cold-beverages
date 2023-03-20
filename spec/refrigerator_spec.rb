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

  it 'has a chiller that starts empty' do
    expect(refrigerator.chiller).to be_empty
  end

  it 'has a freezer that starts empty' do
    expect(refrigerator.freezer).to be_empty
  end

  it 'adds item to chiller by chill function' do
    refrigerator.chill(pizza)
    expect(refrigerator.chiller).to_not be_empty
  end

  it 'adds item to freezer by freeze function' do
    refrigerator.chill(pizza)
    expect(refrigerator.chiller).to_not be_empty
  end

  it 'total capacity includes both the freezers and the chillers capacity' do
    expect(refrigerator.total_capacity).to eq(200)
  end

  it 'should power on both freezer and chiller when turned on' do
    refrigerator.plug_in
    expect(refrigerator.power).to be :on
    expect(refrigerator.chiller.power).to be :on
    expect(refrigerator.freezer.power).to be :on
  end

  it 'should power off both freezer and chiller when turned off' do
    refrigerator.unplug
    expect(refrigerator.power).to be :off
    expect(refrigerator.chiller.power).to be :off
    expect(refrigerator.freezer.power).to be :off
  end

  # it '' do
  # end
end
