require_relative 'blackjack.rb'
require_relative 'cards.rb'
require_relative 'dice.rb'
require_relative 'hilo.rb'
require_relative 'roulette.rb'
require_relative 'slots.rb'

# Player's bankroll goes up and down with wins and losses
# Need to define how to add winnings in
def win_loss
  @bankroll = @bankroll + @winnings
end

def cash_out
#print their total amount
puts "Your total winnings: $#{@bankroll}"
puts "Have a nice day!"
#if negative be threatening
end

def welcome
puts "Welcome to the Casino"
# get name
# get bankroll
    puts "please enter your name"
    @player = gets.strip 
    puts "please enter your bankroll $"
    @bankroll = gets.to_f
    Casino.new(@player, @bankroll)
end

class Casino
  attr_accessor :player, :bankroll
  def initialize (player, bankroll)
    @player = player
    @bankroll = bankroll
    game_choice
  end

  def game_choice
    # Player can go to different games via menu
    puts "What game would you like to play?"
    puts "
    1) Blackjack
    2) Hi-Lo
    3) Roulette
    4) Slots
    5) Cash Out (leave the casino)"
    player_choice = gets.to_i
    case
    when player_choice == 1
      #Blackjack.new
    when player_choice == 2
      #Hilo.new
    when player_choice == 3
      #Roulette.new
    when player_choice == 4
      #Slots.new
    when player_choice == 5
      cash_out
    else 
      "Invalid selection, please enter a number 1-4"
      game_choice
    end
  end
end

welcome

