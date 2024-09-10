# Board to diplay everything
class Board
  private

  def initialize
    puts "Welcome!"
    puts "Tic-Tac-Toe! Start!"
    @pos = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    draw
  end

  public

  def draw
    puts "\t #{@pos[0]} #{@pos[1]} #{@pos[2]}"
    puts "\t #{@pos[3]} #{@pos[4]} #{@pos[5]}"
    puts "\t #{@pos[6]} #{@pos[7]} #{@pos[8]}"
  end

  def update(index, value)
    @pos[index] = value
  end
end
