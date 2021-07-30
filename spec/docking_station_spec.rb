require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike }

    it {expect {subject.release_bike}.to raise_error("There is no bike at this docking station")}

  end

  describe '#dock' do

    it 'docks a bike' do
      is_expected.to respond_to(:dock).with(1).argument
    end

    it 'shows docked bikes' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises an error if docking station is full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock(Bike.new) }.to raise_error("This docking station is full")
    end

  end

  it 'gets a working bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_working
  end

end


