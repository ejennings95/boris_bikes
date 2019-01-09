require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  #it { is_expected.to be_an_instance_of(Bike)}

  it "Should release a bike object" do
    expect(subject.release_bike.class).to eq Bike
  end

  it "It should release a working bike" do
    expect(subject.release_bike).to respond_to(:working?)
  end

end
