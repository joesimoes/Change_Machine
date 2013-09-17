class Register

  puts "Please enter an amount of change from 0-100 cents"
  
  change = gets.chomp.to_i

  if change >= 25 
  	print "At least 1 quarter \n" 
  else
  	print "Less than a quarter \n"
  end
end
