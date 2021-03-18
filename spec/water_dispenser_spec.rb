require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

  let(:reservoir) {double()}
  let(:dispenser) {WaterDispenser.new(reservoir)}
  let(:vessel) {Vessel.new}
  
  it 'can be drained' do
    expect(reservoir).to receive(:drain)
    vessel = double()
    allow(vessel).to receive(:volume).and_return(nil)
    allow(vessel).to receive(:fill).and_return(nil)
    dispenser.dispense(vessel)
  end

  it 'fills the given vessel when drained' do
    allow(reservoir).to receive(:drain).and_return(vessel.volume)
    dispenser.dispense(vessel)
    expect(vessel).to_not be_empty
  end

end
