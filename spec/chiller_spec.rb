require_relative '../lib/chiller'

describe 'A chiller' do

    # ROOM_TEMPERATURE = 70

    # attr_reader :capacity, :temperature
  
    # def initialize(capacity = 100)
    #   @capacity = capacity
    #   @temperature = ROOM_TEMPERATURE
    #   @power = :off
    #   @contents = []
    # end
  
    # def turn_on
    #   @power = :on
    # end
  
    # def turn_off
    #   @power = :off
    # end
  
    # def add(item)
    #   @contents << item
    # end
  
    # def remaining_capacity
    #   capacity - @contents.map(&:volume).reduce(:+).to_i
    # end
  
    # def set_level(level)
    #   @temperature = ROOM_TEMPERATURE - level * 5
    # end


    it "responds to capacity" do
        chiller = Chiller.new
        expect(chiller).to respond_to(:capacity)
    end

    it "responds to temperature" do
        chiller = Chiller.new
        expect(chiller).to respond_to(:temperature)
    end

    it "has capacity" do
        chiller = Chiller.new
        expect(chiller.capacity).to eq(100)
    end

    it "has temperature" do
        chiller = Chiller.new
        expect(chiller.temperature).to eq(70)
    end

    it "has power" do
        chiller = Chiller.new
        expect(chiller.power).to eq(:off)
    end

    it "has contents" do
        chiller = Chiller.new
        expect(chiller.contents).to eq([])
    end

    it "turns on" do
        chiller = Chiller.new
        chiller.turn_on
        expect(chiller.power).to eq(:on)
    end

    it "turns off" do
        chiller = Chiller.new
        chiller.turn_off
        expect(chiller.power).to eq(:off)
    end

    it "adds a item" do
        chiller = Chiller.new
        item = Item.new("cola", 12)
        chiller.add(item)
        expect(chiller.contents).to eq([item])
    end

    it "checks remaining capacity" do
        chiller = Chiller.new
        expect(chiller.remaining_capacity).to eq(100)
    end

    it "sets level" do
        chiller = Chiller.new
        chiller.set_level(10)
        expect(chiller.temperature).to eq(20)
    end

end
