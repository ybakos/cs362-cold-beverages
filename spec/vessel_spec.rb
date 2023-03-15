require_relative 'spec_helper'
require_relative '../lib/vessel'

describe 'A vessel for holding liquid' do

  it 'has a name and volume' do
    vessel = Vessel.new('foo', 100)

    expect(vessel.name).to eq('foo')
    expect(vessel.volume).to eq(100)
  end

  # it 'is initially empty' do
  #   skip
  #   vessel = Vessel.new('foo', 100)
  #   expect(vessel).to be_empty
  # end

  # it 'is no longer empty when we fill it' do
  #   skip
  #   vessel = Vessel.new('foo', 100)
  #   vessel.fill
  #   expect(vessel).to_not be_empty
  # end
end
