# Functions for game
module Game
  def self.start
    board = Board.new
    p1 = Player.new("X")
    p2 = Player.new("O")
    run_loop(board, p1, p2)
  end

  def self.run_loop(board, ply1, ply2)
  end
end
