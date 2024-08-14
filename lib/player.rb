class Player
  attr_reader :guess
  def initialize
    @guess = ""
  end

  def make_guess
    puts "Red, Green, Blue, Yellow, White, Purple (eg. R G Y W)"
    puts "Please make a guess: "
    @guess = gets.chomp
    puts
  end
end