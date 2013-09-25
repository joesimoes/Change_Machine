class Register
	CHANGE = [50, 25, 10, 5, 1]

	def self.make_change(cents)
		drawer = []

		sorted_change.each do |denomination|
	    cents = subtract_change(cents, denomination, drawer)
	  end

		drawer 
	end

	private
	
	def self.sorted_change
		CHANGE.sort.reverse
	end

	def self.subtract_change(cents, denomination, drawer)
  	(cents / denomination).times { drawer << denomination }
  	cents % denomination
	end

  # def self.remove_denomination(cents, drawer)
  # 	first_remove = cents / (D[0])
	 #  	first_remove.times { drawer << (D[0]) }
	 #  	cents = cents % (D[0])
  # 	second_remove = cents / (D[1])
	 #  	second_remove.times { drawer << (D[1]) }
	 #  	cents = cents % (D[1])
  # 	third_remove = cents / (D[2])
	 #  	third_remove.times { drawer << (D[2]) }
	 #  	cents = cents % (D[2])
  # 	last_remove = cents 
	 #  	last_remove.times { drawer << (D[3]) }
  # end

end