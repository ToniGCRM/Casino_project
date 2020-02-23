

  def game_prompt
    print "Let's play some high low!"
    puts "
    1) Hit me!
    2) Yo im outta here
    "
    choice = gets.strip.to_i

    case choice
    when 1
      loop
    when 2
      print "Later bro!"
      exit
    end

    num = rand 20
    puts "Guess between 0 and 20"
    loop do
      player_guess = gets.chomp.to_i

      if player_guess == num
        puts "You guessed correctly, "
        game_prompt
        break
      elsif player_guess > num
        puts "Go lower"
      else
        puts "Go higher"
      end
    end
  end
  game_prompt
