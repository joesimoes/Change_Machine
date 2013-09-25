class Register
	DENOMINATIONS = [25, 10, 5, 1]

	def self.make_change(cents)
		drawer = []
    cents = remove_denomination(cents, drawer)
		drawer 
	end

  def self.remove_denomination(cents, drawer)
  	first_remove = cents / (DENOMINATIONS[0])
	  	first_remove.times { drawer << (DENOMINATIONS[0]) }
	  	cents = cents % (DENOMINATIONS[0])
  	second_remove = cents / (DENOMINATIONS[1])
	  	second_remove.times { drawer << (DENOMINATIONS[1]) }
	  	cents = cents % (DENOMINATIONS[1])
  	third_remove = cents / (DENOMINATIONS[2])
	  	third_remove.times { drawer << (DENOMINATIONS[2]) }
	  	cents = cents % (DENOMINATIONS[2])
  	last_remove = cents 
	  	last_remove.times { drawer << (DENOMINATIONS[3]) }
  end


end
