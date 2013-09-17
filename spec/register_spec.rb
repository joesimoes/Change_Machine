require_relative '../change_machine'

describe Register do 

 it "returns no pennies for multiples of 5" do 
 	register = Register.new
 	register.pennies.should eq(0)
 	
 end
end
