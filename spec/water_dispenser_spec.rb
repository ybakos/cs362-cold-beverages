require_relative 'spec_helper'
require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

  let(:resevoir) { double('Reservoir') }
  let(:vessel) { double('Vessel') }

  it 'can be instantiated' do
    WaterDispenser.new(nil)
  end

  it 'can dispense' do
    w = WaterDispenser.new(nil)
    expect(w).to respond_to('dispense')
  end

  it 'can dispense given a resevoir and vessel' do
    allow(resevoir).to receive(:drain).and_return(nil)
    allow(vessel).to receive(:volume).and_return(nil)

    value = WaterDispenser.new(resevoir).dispense(vessel)
    expect(value).to eq(nil)
  end
end
