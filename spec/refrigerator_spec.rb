require_relative '../lib/refrigerator'

describe 'A refrigerator' do
  let(:chiller) { double 'Chiller' }
  let(:freezer) { double 'Freezer' }
  let(:water_dispenser) { double 'WaterDispenser' }
  let(:water_reservoir) { double 'WaterReservoir' }
  let(:refrigerator) { RefrigeratorTest.new(chiller, freezer, water_dispenser, water_reservoir)}
  let(:item) { double 'Item' }

  it 'has a chiller, freezer, control_panel, water dispenser, water reservoir, and power status' do
    expect(refrigerator.chiller).to be chiller
    expect(refrigerator.freezer).to be freezer
    expect(refrigerator.control_panel).to be_truthy
    expect(refrigerator.water_dispenser).to be water_dispenser
    expect(refrigerator.water_reservoir).to be water_reservoir
    expect(refrigerator.power).to be_truthy
  end

  it 'can chill' do
    expect(chiller).to receive(:add).and_return true
    expect(refrigerator.chill item).to be
  end

  it 'can freeze' do
    expect(freezer).to receive(:add).and_return true
    expect(refrigerator.freeze item).to be
  end

  it 'can calculate total capacity' do
    expect(chiller).to receive(:capacity).and_return 100
    expect(freezer).to receive(:capacity).and_return 100

    expect(refrigerator.total_capacity).to be 200
  end

  it 'can calculate remaining capacity' do
    expect(chiller).to receive(:remaining_capacity).and_return 17
    expect(freezer).to receive(:remaining_capacity).and_return 5

    expect(refrigerator.remaining_capacity).to be 22
  end

  it 'can be plugged in' do
    expect(chiller).to receive(:turn_on)
    expect(freezer).to receive(:turn_on)

    refrigerator.plug_in

    expect(refrigerator.power).to be :on
  end

  it 'can be unplugged' do
    expect(chiller).to receive(:turn_off)
    expect(freezer).to receive(:turn_off)

    refrigerator.unplug

    expect(refrigerator.power).to be :off
  end

  it 'can set the chiller level' do
    expect(chiller).to receive(:set_level)

    refrigerator.set_chiller_level(5)
  end

  it 'can set the freezer level' do
    expect(freezer).to receive(:set_level)

    refrigerator.set_freezer_level(5)
  end

  it 'has a specific to_s' do
    expect(chiller).to receive(:remaining_capacity).and_return 17
    expect(freezer).to receive(:remaining_capacity).and_return 5
    expect(chiller).to receive(:capacity).and_return 100
    expect(freezer).to receive(:capacity).and_return 100
    expect(chiller).to receive(:temperature).and_return 40
    expect(freezer).to receive(:temperature).and_return 15
    expect(water_reservoir).to receive(:current_water_volume).and_return 10

    expect(refrigerator.to_s).to eq("Power: off\nStorage: 22 of 200 available\nTemps: Chiller is 40, Freezer is 15\nWater: Reservoir has 10 remaining.\n")
  end
end

class RefrigeratorTest < Refrigerator
  attr_reader :power

  def initialize(chiller, freezer, water_dispenser, water_reservoir)
    super
  end

  # @todo remove when ControlPanels are implemented
  def control_panel
    true
  end
end
