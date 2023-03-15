require_relative 'spec_helper'
require_relative '../lib/chiller'

describe 'A chiller' do
  let(:chiller) { Chiller.new }

  it 'can be instantiated' do
    chiller
  end

  it 'has a default initial capacity' do
    expect(chiller.capacity).to eq(100)
  end

  it 'has a constant initial temperature' do
    expect(chiller.temperature).to eq(70)
  end

  it 'has a remaining capacity equal to its intial capacity' do
    expect(chiller.remaining_capacity).to eq(100)
  end

  it 'can be turned on' do
    expect(chiller.turn_on).to eq(:on)
  end

  it 'can be turned off' do
    expect(chiller.turn_off).to eq(:off)
  end

  it 'can contain items' do
    expect {chiller.add(nil)}.to_not raise_error
  end

  it 'can have its temperature level set' do
    temp = chiller.temperature
    expect(chiller.set_level(1)).to eq(temp-5)
  end
end
