class Player
  attr_reader :guess
  def initialize
    @guess = []
  end

  def make_guess
    puts "Red, Green, Blue, Yellow, White, Purple"
    puts "Please make a guess: "
    guess = gets.chomp
    @guess.push(guess)
  end
end