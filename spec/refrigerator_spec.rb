require_relative '../lib/refrigerator'

describe 'A refrigerator' do
  let(:chiller) { Chiller.new }
  let(:freezer) { Freezer.new }
  let(:water_reservoir) { WaterReservoir.new }
  let(:water_dispenser) { WaterDispenser.new(water_reservoir) }
  let(:refrigerator) { Refrigerator.new(
    chiller,
    freezer,
    water_dispenser,
    water_reservoir
  ) }

  it 'initializes with 4 dependencies' do
    expect(refrigerator.chiller).to eq(chiller)
    expect(refrigerator.freezer).to eq(freezer)
    expect(refrigerator.water_dispenser).to eq(water_dispenser)
    expect(refrigerator.water_reservoir).to eq(water_reservoir)
  end

end
