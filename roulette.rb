

class Roulette 
  attr_accessor :player, :bankroll 
  def initialize (player, bankroll)
    @player = player
    @bankroll = bankroll
    roulette_menu
  end

def greeting 
`clear`
puts "\n\n\n"
  puts "🎰🎰🎰🎰🎲🎲🎲💰💰💰💰 Welcome To Sam's Roulette Table 💰💰💰🎲🎲🎲🎰🎰🎰🎰"
puts "\n\n\n\n"
end

def roulette_menu 
  puts greeting 
  puts "     We Roll The Dice! You choose your slice. 
              Each Roll cost $100 dollars if you win, You
              Double your bet, if you lose you lose $100 

  1. Bet on Number 1-36 Roulette Wheel 
  2. Go back to the casino  
  "
  puts "Choose an option from above to play"
user_input =gets.chomp.to_i
case user_input
when 1
  ball_on_number
when 2
  end 
end 

def bet_red 
  puts rand(36)
end 

def ball_on_number
  puts `clear`
  puts "🎲🎰Please choose your number (1-36) you would like to bet on fine sir/or lady🎲🎰"
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
puts " \n\n\t\t **-----#{winner_number}------**\n\n"
if winner_number === number_bet
  @bankroll = @bankroll + 100
  puts "#{@player} you win $100 !".upcase 
else winner_number != number_bet 
  winnings 
  puts "\n\n\t\ Sorry.. #{@player} you lose $100, You now have #{@bankroll}\n\n\n".upcase 
end 
puts "\n\n\n    1. Play again
       2. Return to Roulette Menu 
       3. Go back to Casino"
play_again_or_no = gets.chomp.to_i
  case play_again_or_no
  when 1
  ball_on_number
  when 2 
  roulette_menu
  when 3 
  end 
  end
def roulette_rules
puts " Each Roll Cost $100. If you bet Red or Black you can double your money "
end 
def winnings
  @bankroll = @bankroll - 100
end
end
