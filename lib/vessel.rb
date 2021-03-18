class Vessel
  attr_reader :volume

  def initialize(name, volume)
    @name = name
    @volume = volume
    @empty = TRUE
  end

  def name()
    @name
  end  

  def volume()
      @volume
  end    

  def empty?
    @empty
  end  

  def fill
    @empty = FALSE
  end  

  it 'fills vessel' do
    skip
    dispenser= WaterDispenser.new(5)
    vessel = Vessel.new('FAKE', 5)
    dispenser.fill(vessel)
    expect(dispenser.reservoir).to eq(10)
  end
end
