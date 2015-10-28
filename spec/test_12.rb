require_relative 'spec_helper'

describe Barracks do

  before :each do
    @unit = Unit.new(30, 0)
  end

  describe "#dead" do
    it "should run the #dead method when HP reaches 0" do
      @unit.damage(30)
      expect(@unit.dead?).to eq(true) # HP started at 500 but just got hit by half of AP
    end
  end
end