require_relative 'blackjack.rb'
require_relative 'cards.rb'
require_relative 'dice.rb'
require_relative 'hilo.rb'
require_relative 'roulette.rb'
require_relative 'slots.rb'

# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses

# get name
# get bankroll
def welcome
puts "Welcome to the Casino"
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
    puts "What game would you like to play?"
    puts "
    1) Blackjack
    2) Hi-Lo
    3) Roulette
    4) Slots"
    player_choice = gets.to_i
    case
    when player_choice == 1
      blackjack
    when player_choice == 2
      hilo
    when player_choice == 3
      roulette
    when player_choice == 4
      slots
    else 
      "Invalid selection, please enter a number 1-4"
      game_choice
    end
  end
end

#choose your game
welcome

