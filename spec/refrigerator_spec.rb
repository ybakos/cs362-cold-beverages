require_relative '../lib/refrigerator'

describe 'A refrigerator' do
  before do
    @chiller = instance_double('Chiller')
    @freezer = instance_double('Freezer')
    @water_dispenser = instance_double('WaterDispenser')
    @water_reservoir = instance_double('WaterReservoir')
    @item = double
    allow(@item).to receive('volume').and_return(5)
  end

  let(:fridge) { Refrigerator.new(@chiller, @freezer, @water_dispenser, @water_reservoir)}

  it 'exists' do
    expect(fridge.chiller).to eq(@chiller)
    expect(fridge.freezer).to eq(@freezer)
    expect(fridge.water_dispenser).to eq(@water_dispenser)
    expect(fridge.water_reservoir).to eq(@water_reservoir)
  end

  it 'can chill an item' do
    # fridge.chill(@item)
    # expect(remaining_capacity).to_not eq()
  end
end
