require_relative '../lib/refrigerator'

describe 'A refrigerator' do
    #before
    #let(:user) {create(chiller = Chiller.new, freezer = Freezer.new, reservoir = WaterReservoir.new(), water_dispenser = WaterDispenser.new(reservoir) )}


    it "responds to chiller" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        expect(refrigerator).to respond_to(:chiller)
    end

    it "responds to freezer" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        expect(refrigerator).to respond_to :freezer
    end

    it "responds to control_panel" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        expect(refrigerator).to respond_to :chiller
    end

    it "responds to water_dispenser" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        expect(refrigerator).to respond_to :water_dispenser
    end

    it "responds to water_resevoir" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        expect(refrigerator).to respond_to :water_reservoir
    end

    it "has power" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        expect(refrigerator.power).to eq(:off)
    end

    it "can chill" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        item = Item.new("cola", 12)
        refrigerator.chill(item)
        expect(refrigerator.chiller.contents).to eq([item])
    end

    it "can freeze" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        item = Item.new("cola", 12)
        refrigerator.freeze(item)
        expect(refrigerator.freezer.contents).to eq([item])
    end

    it "can check total capacity" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        expect(refrigerator.total_capacity).to eq(200)
    end

    it "can check remaining capacity" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        item = Item.new("cola", 12)
        refrigerator.freeze(item)
        expect(refrigerator.remaining_capacity).to eq(188)
    end

    it "can check plug in" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        refrigerator.plug_in
        expect(refrigerator.freezer.power).to eq(:on)
        expect(refrigerator.chiller.power).to eq(:on)
        expect(refrigerator.power).to eq(:on)
    end

    it "can check unplug" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        refrigerator.unplug
        expect(refrigerator.freezer.power).to eq(:off)
        expect(refrigerator.chiller.power).to eq(:off)
        expect(refrigerator.power).to eq(:off)
    end

    it "can set chiller level" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        refrigerator.set_chiller_level(10)
        expect(refrigerator.chiller.temperature).to eq(20)
    end

    it "can set freezer level" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        refrigerator.set_freezer_level(10)
        expect(refrigerator.freezer.temperature).to eq(-30)
    end

    it "can do to_s" do
        chiller = Chiller.new
        freezer = Freezer.new
        reservoir = WaterReservoir.new()
        water_dispenser = WaterDispenser.new(reservoir)
        refrigerator = Refrigerator.new(chiller, freezer, water_dispenser, reservoir)
        response = refrigerator.to_s #not sure I love this test
        expect(refrigerator.to_s).to eq(response)
    end


end
