require_relative '../lib/freezer'

describe 'A freezer' do
  let(:freezer) { FreezerTest.new }

  it 'has a capacity and temperature' do
    expect(freezer.capacity).to be_truthy
    expect(freezer.temperature).to be_truthy
    expect(freezer.power).to be_truthy
    expect(freezer.contents).to be_truthy
  end

  it 'has an initial capacity of 100' do
    expect(freezer.capacity).to be 100
  end

  it 'can be turned on' do
    freezer.turn_on

    expect(freezer.power).to be :on
  end

  it 'can be turned off' do
    freezer.turn_off

    expect(freezer.power).to be :off
  end

end

class FreezerTest < Freezer
  attr_reader :power, :contents

  def initialize
    super
  end

end