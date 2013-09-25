require_relative'../register'

describe "Register" do 	
  it "requires a Register class constant" do
    lambda {
      Register
    }.should_not raise_error
  end

  it "responds to the make_change method" do
    Register.should respond_to(:make_change)
  end

  describe "when given 1 cent" do
    it "returns 1 penny" do
      Register.make_change(1).should == [1]
    end
  end

  describe "when given 2 cents" do 
    it "returns 2 pennies" do 
      Register.make_change(2).should == [1, 1]
    end
  end

  describe "when given 4 cents" do
    it "returns 4 pennies" do
      Register.make_change(4).should == [1, 1, 1, 1]
    end
  end

  describe "when given 5 cents" do
    it "returns 1 nickel" do
      Register.make_change(5).should == [5]
    end
  end

  describe "when given 6 cents" do 
    it "returns 1 nickel and 1 penny" do 
      Register.make_change(6).should == [5, 1]
    end
  end

  describe "when given 10 cents" do 
    it "returns 1 dime" do 
      Register.make_change(10).should == [10]
    end
  end

  describe "when given 12 cents" do 
    it "returns 1 dime and 2 pennies" do 
      Register.make_change(12).should == [10, 1, 1]
    end
  end

  describe "when given 15 cents" do 
    it "returns 1 dime and 1 nickel" do 
      Register.make_change(15).should == [10, 5]
    end
  end

  describe "when given 23 cents" do 
    it "returns 2 dime and 3 nickel" do 
      Register.make_change(23).should == [10, 10, 1, 1, 1]
    end
  end

  describe "when given 25 cents" do 
    it "returns 1 quarter" do 
      Register.make_change(25).should == [25]
    end
  end

  describe "when given 26 cents" do 
    it "returns 1 quarter and 1 penny" do 
      Register.make_change(26).should == [25, 1]
    end
  end

   describe "when given 31 cents" do 
    it "returns 1 quarter, 1 nickel, and 1 penny" do 
      Register.make_change(31).should == [25, 5, 1]
    end
  end

   describe "when given 42 cents" do 
    it "returns 1 quarter, 1 dime, 1 nickel, and 2 pennies" do 
      Register.make_change(42).should == [25, 10, 5, 1, 1]
    end
  end

  it "should give correct change for multiples of 25" do
    pending
  end

  it "should give correct change for values returning at least one of each coin" do
    pending
  end
end
