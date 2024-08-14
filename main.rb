# Code colors: Red, Green, Blue, Yellow, White, Purple
# Hint Colors: Red and White
require_relative "lib/board"
require_relative "lib/player"

board = Board.new
player = Player.new
count = 10

board.randomize_code

until count < 1 || board.win == true
  player.make_guess
  board.compare(player.guess)  
  board.win?
  board.empty_hint
  count -= 1
end

board.show_code
