require_relative 'spec_helper'
require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  it 'can be instantiated' do
    WaterDispenser.new(nil)
  end

  it 'has a dispense method' do
    w = WaterDispenser.new(nil)
    expect(w).to respond_to('dispense')
  end

  it 'can dispense given resevoir and vessel objects' do
    reservoir = double('Reservoir')
    allow(reservoir)
      .to receive(:drain)
      .and_return(nil)
    allow(reservoir)
      .to receive(:current_water_volume)
      .and_return(1)

    vessel = double('Vessel')
    allow(vessel)
      .to receive(:volume)
      .and_return(nil)
    allow(vessel)
      .to receive(:fill)
      .and_return(nil)

    expect {
      WaterDispenser.new(reservoir)
      .dispense(vessel)}
      .not_to raise_error
  end
end