require_relative 'spec_helper'
require_relative '../lib/refrigerator'
require_relative '../lib/chiller'
require_relative '../lib/freezer'
require_relative '../lib/water_dispenser'
require_relative '../lib/water_reservoir'

describe 'A refrigerator' do
  let(:refrigerator) {
    Refrigerator.new(
      Chiller.new,
      Freezer.new,
      WaterReservoir.new,
      WaterDispenser.new(nil))
  }

  it 'can be instantiated' do
    refrigerator
  end

  it 'can chill' do
    expect {refrigerator.chill(nil)}.to_not raise_error
  end

  it 'can freeze' do
    expect {refrigerator.freeze(nil)}.to_not raise_error
  end

  it 'has a capacity equal to chiller + freezer capacities' do
    expect(refrigerator.total_capacity).to eq(refrigerator.chiller.capacity + refrigerator.freezer.capacity)
  end

  it 'has an initial capacity of two hundred' do
    expect(refrigerator.total_capacity).to eq(200)
  end

  it 'has a remaining capacity equal to chiller + freezer remaining capacities' do
    expect(refrigerator.remaining_capacity).to eq(refrigerator.chiller.remaining_capacity + refrigerator.freezer.remaining_capacity)
  end


end
