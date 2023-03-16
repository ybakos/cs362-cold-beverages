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

  let(:oat_milk) { Item.new('OatMilk', 22) }
  let(:dumplings) { Item.new('Dumplings', 50) }

  it 'initializes with 4 dependencies' do
    expect(refrigerator.chiller).to eq(chiller)
    expect(refrigerator.freezer).to eq(freezer)
    expect(refrigerator.water_dispenser).to eq(water_dispenser)
    expect(refrigerator.water_reservoir).to eq(water_reservoir)
  end

  it 'can add items to its chiller' do
    refrigerator.chill(oat_milk)
    expect(refrigerator.remaining_capacity).to eq(178)
  end

  it 'can add items to its freezer' do
    refrigerator.freeze(dumplings)
    expect(refrigerator.remaining_capacity).to eq(150)
  end

  it 'can calculate its total capacity' do
    expect(refrigerator.total_capacity).to eq(200)
  end

  it 'can turn its power on by plugging in' do
    refrigerator.plug_in
    expect(refrigerator.power).to eq(:on)
  end

  it 'can turn its power off by unplugging' do
    refrigerator.unplug
    expect(refrigerator.power).to eq(:off)
  end

  it 'can set the temp of its chiller' do
    refrigerator.set_chiller_level(8)
    expect(chiller.temperature).to eq(30)
  end

  it 'can set the temp of its freezer' do
    refrigerator.set_freezer_level(8)
    expect(freezer.temperature).to eq(-10)
  end

  it 'can report its status' do
    expect(refrigerator.to_s).to eq(
      <<~STATUS
      Power: #{refrigerator.power}
      Storage: #{refrigerator.remaining_capacity} of #{refrigerator.total_capacity} available
      Temps: Chiller is #{chiller.temperature}, Freezer is #{freezer.temperature}
      Water: Reservoir has #{water_reservoir.current_water_volume} remaining.
      STATUS
    )
  end

end
