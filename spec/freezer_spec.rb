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
end
