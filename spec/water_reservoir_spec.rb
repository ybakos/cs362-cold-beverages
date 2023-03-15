require_relative 'spec_helper'
require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:reservoir) { WaterReservoir.new }

  it 'can be instantiated' do
    reservoir
  end

  it 'has a default initial capacity of ten' do
    expect(reservoir.capacity).to eq(10)
  end

  it 'has a default initial water volume of 0' do
    expect(reservoir.current_water_volume).to eq(0)
  end
end
