# Code colors: Red, Green, Blue, Yellow, White, Purple
# Hint Colors: Red and White
require_relative "lib/board"
require_relative "lib/player"

board = Board.new

board.randomize_code
board.show_code