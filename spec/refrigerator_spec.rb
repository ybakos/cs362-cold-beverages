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
