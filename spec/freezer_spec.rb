require_relative '../lib/freezer'

describe 'A freezer' do

    # ROOM_TEMPERATURE = 70

    # attr_reader :capacity, :temperature

    it "responds to capacity" do
        freezer = Freezer.new
        expect(freezer).to respond_to(:capacity)
    end

    it "responds to temperature" do
        freezer = Freezer.new
        expect(freezer).to respond_to(:temperature)
    end

    it "has capacity" do
        freezer = Freezer.new
        expect(freezer.capacity).to eq(100)
    end

    it "has temperature" do
        freezer = Freezer.new
        expect(freezer.temperature).to eq(70)
    end

    it "has power" do
        freezer = Freezer.new
        expect(freezer.power).to eq(:off)
    end

    it "has contents" do
        freezer = Freezer.new
        expect(freezer.contents).to eq([])
    end

    it "turns on" do
        freezer = Freezer.new
        freezer.turn_on
        expect(freezer.power).to eq(:on)
    end

    it "turns off" do
        freezer = Freezer.new
        freezer.turn_off
        expect(freezer.power).to eq(:off)
    end

    it "adds a item" do
        freezer = Freezer.new
        item = Item.new("cola", 12)
        freezer.add(item)
        expect(freezer.contents).to eq([item])
    end

    it "checks remaining capacity" do
        freezer = Freezer.new
        expect(freezer.remaining_capacity).to eq(100)
    end

    it "sets level" do
        freezer = Freezer.new
        freezer.set_level(10)
        expect(freezer.temperature).to eq(-30)
    end

  

end
