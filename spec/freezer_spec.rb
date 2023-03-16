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

  it 'can be turned on' do
    expect(freezer.turn_on).to eq(:on)
  end

  it 'can be turned off' do
    expect(freezer.turn_off).to eq(:off)
  end

  it 'can contain items' do
    expect {freezer.add(nil)}.to_not raise_error
  end

  it 'can have its temperature level set' do
    temp = freezer.temperature
    expect(freezer.set_level(1)).to eq(temp-10)
  end
end