class ChangeMachine

def setup
  $stdout = StringIO.new
end

    puts "Please enter an amount of change from 0-100 cents"
    change = gets.chomp.to_i

    quarters = change/25 
    dimes = (change - (quarters*25))/10
    nickels = (change - ((quarters*25)+(dimes*10)))/5
    pennies = (change - ((quarters*25)+(dimes*10)+(nickels*5)))/1

    print quarters.to_s + " quarters \n" 
    print dimes.to_s + " dimes \n"
    print nickels.to_s + " nickels \n"
    print pennies.to_s + " pennies \n"

end
