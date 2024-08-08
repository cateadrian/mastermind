require "rainbow/refinement"
# using Rainbow
class Board
  using Rainbow

  def initialize
    # Code colors: Red, Green, Blue, Yellow, White, Purple
    # Hint colors: Red and White
    @colors = {red: "R".red, green: "G".green ,blue: "B".blue , yellow: "Y".yellow, white: "W".white, purple: "P".magenta}
    # *** Keep in mind the code strings look like this "\e[31mR\e[0m"
    @code = []
    @code_as_nums = Array.new(4){rand(1..6)}
  end

  def randomize_code
    @code_as_nums.each do |number|
      case number
      when 1
        @code.push(@colors[:red])
      when 2
        @code.push(@colors[:green])
      when 3
        @code.push(@colors[:blue])
      when 4
        @code.push(@colors[:yellow])
      when 5
        @code.push(@colors[:white])
      when 6
        @code.push(@colors[:purple])
      end
    end
  end

  def show_code
    puts @code.join(" ")
  end

end