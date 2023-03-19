require_relative '../lib/freezer'

describe 'A freezer' do

  freezer = Freezer.new

  it 'should start off' do
    expect(freezer.power).to be :off
  end

  it 'should be turned on' do
    freezer.turn_on
    expect(freezer.power).to be :on
  end

  it 'should start empty' do
    expect(freezer).to be_empty
  end

end
