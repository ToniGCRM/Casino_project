def greeting 
`clear`
puts "\n\n\n"
  puts "🎰🎰🎰🎰🎲🎲🎲💰💰💰💰 Welcome To Sam's Roulette Table 💰💰💰🎲🎲🎲🎰🎰🎰🎰"
puts "\n\n\n\n"
end

def roulette_menu 
  puts greeting 
  
  puts "     We Roll The Dice! You choose your slice. 
              Each Roll cost $100 dollars refer 
              to option 5 to understand game 
              rules and payouts. 
              
  1. Bet Red 
  2. Bet Black 
  3. Choose a number to bet on
  4. Go back to the casion 
  5. Rules  
  
  "
  puts "Choose an option from above to play"
  
user_input =gets.chomp.to_i
case user_input
when 1
bet_red
when 3
  ball_on_number
when 5
roulette_rules
  end 
end 
 
def bet_red 
  puts rand(36)

end 

def ball_on_number
  puts `clear`
  puts "🎲🎰Please choose your number fine sir/or lady🎲🎰"
  sleep 1
  number_bet =gets.chomp.to_i
  puts "                      
                           36  1  2
                        35           3
                      34                4 
                    33                    5 
                  32                       6
                31                          7 
              30                             8 
              29                              9
              28                              10
              27                             11
                26                          12
                  24                      13
                    23                   14
                      22                15 
                        21             16
                          20         17
                              19 18

                              🔮                            
                                        
                              🔮
  
                              🔮


"
puts "The ball landed on ........ "
sleep 2
winner_number = rand(36)
puts " \n\n\t\t\t\t\t **-----#{winner_number}------**\n\n"
if winner_number === number_bet
  puts "you win!".upcase
else winner_number != number_bet
  puts "\n\n\t\t\t\t\tSorry.. you lose $100\n\n".upcase
end  
end

  
def roulette_rules
puts " Each Roll Cost $100. If you bet Red or Black you can double your money "
end 


roulette_menu
  
