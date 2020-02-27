require 'pry'
require 'pry-byebug'
# Need to set bet amount for game
# trigger to pull arm 
# three symbols, if they match, then big win, if two match smaller win
# give option to exit after each win/loss like "spin again? y/n"

#symbols list
# \u{1F34B} #lemon #1
# \u{1F34E} #apple #2
# \u{1F353} #strawberry #3
# \u{1F34C} #banana #4
# \u{1F347} #grapes #5
# \u{1F984} #unicorn/joker #6


class Slots
  attr_accessor :player, :bankroll 
  def initialize (player, bankroll)
    @player = player
    @bankroll = bankroll #how to get their bankroll amount from the casino class? 
    system 'clear'
    puts "~~**~~**~~**~ Welcome to the loosest slots in town! ~**~~**~~**~~"
    sleep(2)
    spin_again
  end
  def scoring
    case 
      when @slot_array[0] == 6 && @slot_array[1] == 6 && @slot_array[2] == 6
        @winnings = @bet * 10
      when (@slot_array[0] === @slot_array[1]) && (@slot_array[1] === @slot_array[2])
        @winnings = @bet * 5
      when (@slot_array[0] == 6 && @slot_array[1] == 6) || (@slot_array[0] == 6 && @slot_array[2] == 6) || (@slot_array[1] ==6 && @slot_array[2] ==6)
        @winnings = @bet * 2
      when @slot_array[0] == 6 || @slot_array[1] == 6 || @slot_array[2] == 6
        @winnings = @bet * 1
      else
        @winnings = @bet * 0
    end
    puts 
    puts "You won $#{@winnings}"
    @bankroll = @bankroll - @bet + @winnings
    puts "You have $#{@bankroll}"
    spin_again
    end
  def symbol_assign #assign symbol to random value
    @emoji_array = []
    @slot_array.each do |item|
      if item == 1
      @emoji_array.push("| \u{1F34B} |")
      elsif item == 2
      @emoji_array.push("| \u{1F34E} |")
      elsif item == 3
      @emoji_array.push("| \u{1F353} |")
      elsif item == 4
      @emoji_array.push("| \u{1F34C} |")
      elsif item == 5
      @emoji_array.push("| \u{1F347} |")
      elsif item == 6
      @emoji_array.push("| \u{1F984} |")
     end
    end
    puts "#{@emoji_array[0]} #{@emoji_array[1]} #{@emoji_array[2]}"
  scoring
  end

  def pull_lever 
    @slot_array = []
    def slot1
      @slot_array.push(rand(1..6))
      @slot_array.push(rand(1..6))
      @slot_array.push(rand(1..6))
    end
    puts "spin spin spin spin spin spin...."
    sleep(2)
    slot1
    symbol_assign
  end

  def place_bet
    puts "************************************"
    sleep(1)
    if @bankroll <= 0
      puts "You're out of money friend! You're outta here!"
      Casino.new(@player,@bankroll)
    else
      puts "How much would you like to bet?"
       @bet = gets.to_f
        if @bet > @bankroll 
          puts "Sorry big spender, you don't have that much money!"
          place_bet
        else
        pull_lever
      end
    end
  end
  
  def spin_again
    puts "Would you like to pull the lever? (y/n)"
    answer = gets.strip 
    if answer == "y"
      place_bet
    else 
    end
  end
end

# Slots.new("Toni", 1000)

