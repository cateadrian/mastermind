# Code colors: Red, Green, Blue, Yellow, White, Purple
# Hint Colors: Red and White
require_relative "lib/board"
require_relative "lib/player"
require_relative "lib/computer"

board = Board.new
player = Player.new
computer = Computer.new
count = 10

player.role?

if player.role == "Breaker" 
  board.randomize_code

  until count < 1 || board.win == true
    player.make_guess
    board.compare(player.guess)  
    board.win?
    board.empty_hint
    count -= 1
  end

  board.show_code
elsif player.role == "Mastermind"
    board.code = player.set_code
    board.show_code
    computer.convert_guess(computer.initial_guess)    
    board.compare(computer.guess_char.join(""))
end
