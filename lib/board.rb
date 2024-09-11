# frozen_string_literal: true

# Board to display everything
class Board
  private

  def initialize
    puts 'Welcome!'
    puts 'Tic-Tac-Toe! Start!'
    @pos = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @conditions = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    @used = []
    @winner = 'none'
    draw
  end

  public

  attr_reader :used, :pos, :conditions
  attr_accessor :winner

  def draw
    puts "\t #{@pos[0]} #{@pos[1]} #{@pos[2]}"
    puts "\t #{@pos[3]} #{@pos[4]} #{@pos[5]}"
    puts "\t #{@pos[6]} #{@pos[7]} #{@pos[8]}"
  end

  def update(index, value)
    @used.push(@pos[index])
    @pos[index] = value
  end
end
