require_relative '../lib/chiller'

describe 'A chiller' do
  let(:chiller) { ChillerTest.new }
  let(:item) { double('Item') }
  let(:small_item) { double('Item') }
  let(:big_item) { double('Item') }
  let(:room_temp) { 70 }

  it 'has a capacity and temperature' do
    expect(chiller.capacity).to be_truthy
    expect(chiller.temperature).to be_truthy
    expect(chiller.power).to be_truthy
    expect(chiller.contents).to be_truthy
  end

  it 'has an initial capacity of 100' do
    expect(chiller.capacity).to be 100
  end

  it 'has an initial temperature of room temperature' do
    expect(chiller.temperature).to be room_temp
  end

  it 'can be turned on' do
    chiller.turn_on

    expect(chiller.power).to be :on
  end

  it 'can be turned off' do
    chiller.turn_off

    expect(chiller.power).to be :off
  end

  it 'can have an item added to it' do
    chiller.add item

    expect(chiller.contents).to include item
  end

  it 'has a sensible remaining_capacity' do
    chiller.add small_item
    chiller.add big_item

    allow(small_item).to receive(:volume).and_return(1)
    allow(big_item).to receive(:volume).and_return(20)
    a_sensible_remaining_capacity = chiller.capacity - small_item.volume - big_item.volume

    expect(chiller.remaining_capacity).to be a_sensible_remaining_capacity
  end

  it 'can have it\'s level set' do
    chiller.set_level 5

    expect(chiller.temperature).to be room_temp - 25
  end
end

class ChillerTest < Chiller
  attr_reader :power, :contents

  def initialize
    super
  end

end
