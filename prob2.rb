def play_game
    
    score = 0
    rooms = {
      "1" => 5,
      "2" => 10,
      "3" => 15
    }
  
    puts "Welcome to the Adventure Game!"
    puts "You have 0 points."
  
    loop do
      
      puts "Choose a room (1-3) to enter or 'exit' to end the game: "
      choice = gets.chomp
  
      if choice == "exit"
        puts "Game over! You collected a total of #{score} points."
        break
      elsif rooms.has_key?(choice)
        score += rooms[choice]
        puts "You entered Room #{choice} and earned #{rooms[choice]} points."
      else
        
        puts "Invalid choice. Please enter a valid room number (1-3) or 'exit'."
      end
    end
  end
  
  play_game
  