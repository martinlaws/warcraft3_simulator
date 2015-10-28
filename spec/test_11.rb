require_relative 'spec_helper'

describe Barracks do

  before :each do
    @footman = Footman.new
    @barracks = Barracks.new
  end

  describe "#damage" do
    it "should reduce the Barracks' health_points by half the attack_power specified" do
      @footman.attack_building!(@barracks)
      expect(@barracks.health_points).to eq(495) # HP started at 500 but just got hit by half of AP
    end
  end
end