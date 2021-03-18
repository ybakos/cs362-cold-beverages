require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  
  it 'can be drained' do
    reservoir = double()
    expect(reservoir).to receive(:drain)

    vessel = double()
    allow(vessel).to receive(:volume).and_return(nil)

    dispenser = WaterDispenser.new(reservoir)
    dispenser.dispense(vessel)
  end

end
