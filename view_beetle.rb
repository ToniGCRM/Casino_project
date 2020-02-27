# How to read the method names
# for each part add a letter (b)ody, (h)ead, etc... 
# if there are multiples, add a number at the end

# to do
# make a timer
# maybe accumulate rolls into a string
# maybe roll with " ENTER "
# link with Casino.new
# clean code

class View

  def intro
    puts File.open("./screens/intro_screen.txt").read
  end

  def rules
    puts File.open("./screens/rules_screen.txt").read
  end

  def countdown
    puts `clear`
      puts File.open("./screens/ready_3.txt").read
    sleep 1
    puts `clear`
      puts File.open("./screens/ready_2.txt").read
    sleep 1
    puts `clear`
      puts File.open("./screens/ready_1.txt").read
    sleep 1
    puts `clear`
     puts File.open("./screens/ready_go.txt").read
    sleep 1
  end

  def beetle_empty
    puts File.open("./pics/beetle_empty.txt").read
  end
          #Puts the body of the beetle
  def beetle_b
    puts File.open("./pics/beetle_b.txt").read
  end
            #Puts body and head
  def beetle_bh
    puts File.open("./pics/beetle_bh.txt").read
  end
            #Adds the wings
  def beetle_bhw1
    puts File.open("./pics/beetle_bhw1.txt").read
  end
  def beetle_bhw2
    puts File.open("./pics/beetle_bhw2.txt").read
  end

           #Adds the legs
  def beetle_bhwl1
    puts File.open("./pics/beetle_bhwl1.txt").read
  end
  def beetle_bhwl2
    puts File.open("./pics/beetle_bhwl2.txt").read
  end
  def beetle_bhwl3
    puts File.open("./pics/beetle_bhwl3.txt").read
  end
  def beetle_bhwl4
    puts File.open("./pics/beetle_bhwl4.txt").read
  end
  def beetle_bhwl5
    puts File.open("./pics/beetle_bhwl5.txt").read
  end
  def beetle_bhwl6
    puts File.open("./pics/beetle_bhwl6.txt").read
  end

            #Adds the antennae 
  def beetle_bhwla1
    puts File.open("./pics/beetle_bhwla1.txt").read
  end
  def beetle_bhwla2
    puts File.open("./pics/beetle_bhwla2.txt").read
  end

            #Adds the first eye
  def beetle_bhwlae
    puts File.open("./pics/beetle_bhwlae.txt").read
  end
          #Adds the second eye and completes
  def beetle_complete
    puts File.open("./pics/beetle_complete.txt").read
  end

          #Win screen
  def win_screen
    puts File.open("./screens/win_screen.txt").read
  end
        #Lose screen
  def lose_screen
    puts File.open("./screens/lose_screen.txt").read
  end
  
  def exit_menu
    puts "1) PLAY AGAIN"
    puts "2) LEAVE BEETLE"
  end

end