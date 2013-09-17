require 'rspec'
require_relative'../change_machine'

describe Register do 	
  before do 
    @register = Register.new
  end

  it "should prompt" do 
    STDOUT.should_receive(:puts).with("Please enter an amount of change from 0-100 cents")
  end

   it "should give correct change for multiples of 25" do

   end

   it "should give correct change for values returning at least one of each coin" do

   end
end

