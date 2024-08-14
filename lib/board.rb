require "rainbow/refinement"

class Board
  using Rainbow
  attr_reader :win

  def initialize
    # Code colors: Red, Green, Blue, Yellow, White, Purple
    # Hint colors: Red and White
    @colors = {red: "R".red, green: "G".green ,blue: "B".blue , yellow: "Y".yellow, white: "W".white, purple: "P".magenta}
    # *** Keep in mind the code strings look like this "\e[31mR\e[0m"
    @code = []
    @code_string = []
    @code_as_nums = Array.new(4){rand(1..6)}
    @hint = []
    @win = false
  end

  def randomize_code
    @code_as_nums.each do |number|
      case number
      when 1
        @code.push(@colors[:red])
        @code_string.push("R")
      when 2
        @code.push(@colors[:green])
        @code_string.push("G")
      when 3
        @code.push(@colors[:blue])
        @code_string.push("B")
      when 4
        @code.push(@colors[:yellow])
        @code_string.push("Y")
      when 5
        @code.push(@colors[:white])
        @code_string.push("W")
      when 6
        @code.push(@colors[:purple])
        @code_string.push("P")
      end
    end
  end

  def show_code
    puts @code.join(" ")
  end

  def compare(player_guess)
    code = @code_string.map(&:clone)
    guess = player_guess.split(" ").map(&:clone)
  
    code.each_with_index do |code_color, index|
      if code_color == guess[index]
        @hint.push("R")
        code[index] = guess[index] = "X"
      end   
    end
  
    code.each_with_index do |code_color, index|
      next if code_color == "X"
  
      if guess.include?(code_color)
        @hint.push("W")
        code[index] = guess[index] = "X"
      end
    end
  
    puts "Hint: #{@hint}"
  end

  def empty_hint
    @hint = []
  end

  def win?
    if @hint == ["R", "R", "R", "R"]
      @win = true
    end
  end

end