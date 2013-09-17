class Register

  puts "Please enter an amount of change from 0-100 cents"
  
  change = gets.chomp.to_i

  quarters = change/25 
  dimes = change/10
  nickels = change/5
  pennies = change/1


print "You get " + quarters.to_s + " quarters \n"

end
