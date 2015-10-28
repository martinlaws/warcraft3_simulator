require_relative 'spec_helper'

describe Footman do

  before :each do
    @footman = Footman.new
    @peasant = Peasant.new
  end

  describe "doesn't attack when #dead" do
    it "should not attack when #dead" do
      @footman.damage(60)
      expect(@footman.attack!(@peasant)).to eq(false) # HP started at 500 but just got hit by half of AP
    end
  end
end