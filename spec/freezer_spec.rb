require_relative 'spec_helper'
require_relative '../lib/freezer'

describe 'A freezer' do

  let(:freezer) { Freezer.new }

  it 'can be instantiated' do
    freezer
  end

  it 'has a default initial capacity' do
    expect(freezer.capacity).to eq(100)
  end

  it 'has a constant initial temperature' do
    expect(freezer.temperature).to eq(70)
  end

  it 'has a remaining capacity equal to its intial capacity' do
    expect(freezer.remaining_capacity).to eq(100)
  end

  it 'has turn on and turn off methods' do
    expect(freezer).to respond_to(:turn_on)
    expect(freezer).to respond_to(:turn_off)
  end
end
