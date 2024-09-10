# Functions for game
module Game
  def self.start
    p1 = Player.new
    p2 = Player.new
    # board = Board.new

    puts p1.input

    puts p2.input
  end

  def self.winner?(player) end
end
