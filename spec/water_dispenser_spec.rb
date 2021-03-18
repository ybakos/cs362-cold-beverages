require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  
  it 'can be drained' do
    reservoir = double()
    expect(reservoir).to receive(:drain)

    vessel = double()
    allow(vessel).to receive(:volume).and_return(nil)
    allow(vessel).to receive(:fill).and_return(nil)

    dispenser = WaterDispenser.new(reservoir)
    dispenser.dispense(vessel)
  end

  it 'fills the given vessel when drained' do
    vessel = Vessel.new
    reservoir = double()
    allow(reservoir).to receive(:drain).and_return(vessel.volume)
    dispenser = WaterDispenser.new(reservoir)
    dispenser.dispense(vessel)
    expect(vessel).to_not be_empty
  end

end
