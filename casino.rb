require_relative 'blackjack.rb'
require_relative 'cards.rb'
require_relative 'dice.rb'
require_relative 'hilo.rb'
require_relative 'roulette.rb'
require_relative 'slots.rb'

# Player's bankroll goes up and down with wins and losses
# Need to define how to add winnings in
def welcome
  `clear`
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
  # def win_loss
  #   @bankroll = @bankroll + @winnings
  # end
  
  def cash_out
  #print their total amount
  puts "Your total winnings: $#{@bankroll}"
  puts "Have a nice day!"
  exit
  end
  end

  def game_choice
    # Player can go to different games via menu
    puts "What game would you like to play?"
    puts "
    1) Beetle
    2) Hi-Lo
    3) Roulette
    4) Slots
    5) Cash Out (leave the casino)"
    player_choice = gets.to_i
    case
    when player_choice == 1
      Beetle.new
    when player_choice == 2
      Hilo.new
    when player_choice == 3
      Roulette.new(@player, @bankroll)
    when player_choice == 4
      Slots.new(@player, @bankroll)
    when player_choice == 5
      cash_out
    else 
      "Invalid selection, please enter a number 1-5"
      game_choice
    end
    game_choice
end

welcome

