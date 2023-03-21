require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) { FreezerTest.new }
  let(:item) { double('Item') }
  let(:small_item) { double('Item') }
  let(:big_item) { double('Item') }
  let(:room_temp) { 70 }

  it 'has a capacity and temperature' do
    expect(freezer.capacity).to be_truthy
    expect(freezer.temperature).to be_truthy
    expect(freezer.power).to be_truthy
    expect(freezer.contents).to be_truthy
  end

  it 'has an initial capacity of 100' do
    expect(freezer.capacity).to be 100
  end

  it 'has an initial temperature of room temperature' do
    expect(freezer.temperature).to be room_temp
  end

  it 'can be turned on' do
    freezer.turn_on

    expect(freezer.power).to be :on
  end

  it 'can be turned off' do
    freezer.turn_off

    expect(freezer.power).to be :off
  end

  it 'can have an item added to it' do
    freezer.add item

    expect(freezer.contents).to include item
  end

  it 'has a sensible remaining_capacity' do
    freezer.add small_item
    freezer.add big_item

    allow(small_item).to receive(:volume).and_return(1)
    allow(big_item).to receive(:volume).and_return(20)
    a_sensible_remaining_capacity = freezer.capacity - small_item.volume - big_item.volume

    expect(freezer.remaining_capacity).to be a_sensible_remaining_capacity
  end

  it 'can have it\'s level set' do
    freezer.set_level 5

    expect(freezer.temperature).to be room_temp - 50
  end

end

class FreezerTest < Freezer
  attr_reader :power, :contents

  def initialize
    super
  end

end