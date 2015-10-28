require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @unit         = Unit.new(30,0)
    @barracks     = Barracks.new
    @siege_engine = @barracks.train_siege_engine
  end

  it "should not be able to attack other units" do
    expect(@siege_engine.attack!(@unit)).to eq(false)
  end

  it "should start with 50 AP" do
    expect(@siege_engine.attack_power).to eq(50)
  end    

  it "should start with 400 HP" do
    expect(@siege_engine.health_points).to eq(400)
  end    

  it "should cost 200 gold" do
    expect(@barracks.gold).to eq(800)
  end   

  it "should cost 60 lumber" do
    expect(@barracks.lumber).to eq(440)
  end   

  it "should cost 3 food" do
    expect(@barracks.food).to eq(77)
  end
end