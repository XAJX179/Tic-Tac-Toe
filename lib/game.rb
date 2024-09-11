# Functions for game
module Game
  def self.start
    ply1 = Player.new("X")
    ply2 = Player.new("O")
    board = Board.new
    run_loop(board, ply1, ply2)
  end

  def self.game_loop(player, board)
    pos = take_input(player, board)
    handle_board(player, board, pos)
    winner(player, board)
    sleep 2
  end

  def self.run_loop(board, ply1, ply2)
    loop do
      game_loop(ply1, board)
      break if board.winner != "none"

      game_loop(ply2, board)
      break if board.winner != "none"
    end
  end

  def self.take_input(player, board)
    input = nil
    input = player.input until board.pos.include?(input) && !board.used.include?(input)
    input
  end

  def self.handle_board(player, board, pos)
    board.update(pos - 1, player.sign)
    board.draw
  end

  def self.winner(player, board)
    # if won
    #   board.winner = player.name.to_s
    # elsif full
    #   board.winner = 'Tie'
    #   puts "It's a tie  "
    # end
  end
end
