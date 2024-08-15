class Computer
  attr_reader :initial_guess, :guess_char
  def initialize
    @combo_sets = [1, 2, 3, 4, 5, 6].repeated_permutation(4).to_a
    @initial_guess = [1, 1, 2, 2]
    @guess_char = []
  end

  def convert_guess(guess)
    guess.each do |element|
      case element
      when 1
        @guess_char.push("R")
      when 2
        @guess_char.push("G")
      when 3
        @guess_char.push("B")
      when 4
        @guess_char.push("Y")
      when 5
        @guess_char.push("W")
      when 6
        @guess_char.push("P")
      end
    end
    # p @guess_char
  end
end