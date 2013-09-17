class Register

  puts "Please enter an amount of change from 0-100 cents"
  
  change = gets.chomp.to_i

  quarters = change/25 
  dimes = change/10
  nickels = change/5
  pennies = change/1

  remainder = change%25
  d = remainder/10
  n =  remainder/5
  p = remainder/1
  
 

 
  print quarters.to_s + " quarters \n"  
  if remainder >= 10
	print d.to_s + " dimes \n"
  elsif remainder >= 5 
	print n.to_s + " nickels\n"
  elsif remainder >= 1
	print p.to_s + " pennies\n"
 
  end
  
end

