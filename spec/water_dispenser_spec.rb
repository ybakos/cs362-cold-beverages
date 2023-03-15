require_relative 'spec_helper'
require_relative '../lib/water_dispenser'

describe 'A water dispenser' do

  it 'can be instantiated' do
    WaterDispenser.new(nil)
  end

  it 'can dispense' do
    w = WaterDispenser.new(nil)
    expect(w).to respond_to('dispense')
  end

  it 'cannot dispense without a resevoir or vessel' do
    w = WaterDispenser.new(nil)
    expect(w.dispense(nil)).to raise_error
  end
end
