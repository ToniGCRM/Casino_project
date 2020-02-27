require_relative 'view_beetle.rb'


class Beetle_game

  def initialize
    @view = View.new
    # @player = Player.new
  end

  #title screen
  def introduction
    puts `clear`
    @view.intro
    intro_choice = gets.to_i
      case intro_choice
        when 1 
          puts "How much do you want to bet?"
            # puts "You have $" @player.bankroll
            # @player.wager == gets.to_i
              # if @player.wager > @player.bankroll
                  # puts "You dont have that much money."
                  # introduction
              # else
                # puts "You bet $" @player.wager
                # puts "Get ready!"
                sleep 1
              # end 
          @view.countdown
            build_body
        when 2
         puts `clear`
          @view.rules
            rules_choice = gets
              if rules_choice === 'д' 
              else introduction 
              end
          when 3
            # Casino.new(@player, @bankroll) 
          else 
            puts "ENTER A VALID CHOICE!"
          sleep 1
        introduction
      end
  end

  def build_body
    puts `clear`
    @view.beetle_empty
    roll_body = gets.to_i
      if roll_body == 1
      @die1 = 1 + rand(6)
        if @die1 == 6
          puts "You rolled a 6! Draw the body!"
            # sleep 1
              build_head
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_body
        end
      else
        build_body
      end
  end

  def build_head
    puts `clear`
    @view.beetle_b
    roll_head = gets.to_i
      if roll_head == 1
      @die1 = 1 + rand(6)
        if @die1 == 5
          puts "You rolled a 5! Draw the head!"
            # sleep 1
              build_wing1
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_head
        end
      else
        build_head
      end
  end

  def build_wing1
    puts `clear`
    @view.beetle_bh
    roll_wing1 = gets.to_i
      if roll_wing1 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 4! Draw the first wing!"
            # sleep 1
              build_wing2
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_wing1
        end
      else
        build_wing1
      end
  end 

  def build_wing2
    puts `clear`
    @view.beetle_bhw1
    roll_wing2 = gets.to_i
      if roll_wing2 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 4! Draw the other wing!"
            # sleep 1
              build_leg1
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_wing2
        end
      else
        build_wing2
      end
  end

  def build_leg1
    puts `clear`
    @view.beetle_bhw2
    roll_leg1 = gets.to_i
      if roll_leg1 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the first leg!"
            # sleep 1
              build_leg2
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_leg1
        end
      else
        build_leg1
      end
  end

  def build_leg2
    puts `clear`
    @view.beetle_bhwl1
    roll_leg2 = gets.to_i
      if roll_leg2 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 1
              build_leg3
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_leg2
        end
      else
        build_leg2
      end
  end

  def build_leg3
    puts `clear`
    @view.beetle_bhwl2
    roll_leg3 = gets.to_i
      if roll_leg3 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 1
              build_leg4
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_leg3
        end
      else
        build_leg3
      end
  end

  def build_leg4
    puts `clear`
    @view.beetle_bhwl3
    roll_leg4 = gets.to_i
      if roll_leg4 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 1
              build_leg5
         else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_leg4
        end
      else
        build_leg4
      end
  end

  def build_leg5
    puts `clear`
    @view.beetle_bhwl4
    roll_leg5 = gets.to_i
      if roll_leg5 == 1
        @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 1
              build_leg6
        else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_leg5
        end
      else
        build_leg5
      end
  end

  def build_leg6
    puts `clear`
    @view.beetle_bhwl5
    roll_leg6 = gets.to_i
      if roll_leg6 == 1
        @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 1
              build_antenna1
        else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_leg6
        end
      else
        build_leg6
      end
  end

  def build_antenna1
    puts `clear`
    @view.beetle_bhwl6
    roll_antenna1 = gets.to_i
    if roll_antenna1 == 1
      @die1 = 1 + rand(6)
      if @die1 == 4
        puts "You rolled a 3! Draw the next leg!"
          # sleep 1
            build_antenna2
      else
          puts "You rolled a #{@die1}, try again!"
          # sleep 0.75
        build_antenna1
      end
    else
      build_antenna1
    end
  end

  def build_antenna2
    puts `clear`
    @view.beetle_bhwla1
    roll_antenna2 = gets.to_i
    if roll_antenna2 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 1
              build_eye1
          else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_antenna2
        end
    else
        build_antenna2
    end
  end

  def build_eye1
    puts `clear`
    @view.beetle_bhwla2
    roll_eye1 = gets.to_i
      if roll_eye1 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 1
              build_eye2
        else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.75
          build_eye2
        end
      else
        build_eye2
      end
  end

  def build_eye2
    puts `clear`
    @view.beetle_bhwlae
    roll_eye2 = gets.to_i
      if roll_eye2 == 1
      @die1 = 1 + rand(6)
        if @die1 == 4
          puts "You rolled a 3! Draw the next leg!"
            # sleep 0.25
              win_game
        else
            puts "You rolled a #{@die1}, try again!"
            # sleep 0.25
          build_eye2
        end
      else
        build_eye2
      end
  end

  def win_game
      puts `clear`
    @view.beetle_complete
    sleep 0.5
      puts `clear`
    @view.win_screen
      sleep 2
      50.times do |x|
        puts
        sleep 0.05
      end
    puts "You won $" # @player.wager
    sleep 2
      # @player.bankroll = @player.bankroll + @player.wager
      @view.exit_menu
        exit_choice = gets.to_i
          if exit_choice == 1
            introduction
          else
            # Casino.new
          end
  end

  def lose_game
    puts `clear`
    @view.lose_screen
    sleep 1
    puts "The house takes your $" # @player.wager
    puts "Better luck next time."
    sleep 2
      #  @player.bankroll = @player.bankroll - @player.wager
    @view.exit_menu
      exit_choice = gets.to_i
          if exit_choice == 1
            introduction
          else
            # Casino.new
          end
  end

end

Beetle_game.new.introduction
