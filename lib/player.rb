class Player
  attr_reader :guess, :role
  def initialize
    @guess = ""
    @role = ""
  end

  def make_guess
    puts "Red, Green, Blue, Yellow, White, Purple (eg. R G Y W)"
    puts "Please make a guess: "
    @guess = gets.chomp
    puts
  end

  def role?
    puts "Please choose a role: Breaker or Mastermind"
    @role = gets.chomp
  end

  def set_code
    puts "Please set a code:"
    code = gets.chomp
    code
  end
end