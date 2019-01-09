require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it "Should release a bike object" do
    subject.dock(Bike.new)
    expect(subject.release_bike.class).to eq Bike
  end

  it "It should release a working bike" do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1) }

  it { is_expected.to respond_to(:bike) }

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  describe '#bike' do
    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
    end
  end

  describe '#release_bike' do
    it "Will not release a bike when empty" do
      expect {subject.release_bike}.to raise_error(NoBikePresentError)
    end
  end

end
