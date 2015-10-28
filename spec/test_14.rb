require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "starts off with 500 lumber" do
    expect(@barracks.lumber).to eq(500)
  end

end