require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  
  it 'has a reservoir' do
    reservior = double
    dispenser = WaterDispenser.new(reservior)
    expect(dispenser.reservoir).to eq(reservior)
  end

  it 'completely empties a reservior' do
    reservior = double('WaterReservior')
    vessel = double('Vessel')
    allow(vessel).to receive('volume').and_return(100)
    allow(vessel).to receive('fill').and_return(0)
    allow(reservior).to receive('drain').and_return(0)
    dispenser = WaterDispenser.new(reservior)
    expect(dispenser.dispense(vessel)).to eq(0)
  end

end
