require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  water_dispenser = WaterDispenser.new("FAKE")
    
  it 'exists' do
    WaterDispenser.new("FAKE")
  end
  
  it 'has a reservoir' do
    expect(water_dispenser).to respond_to(:reservoir)
  end

end
