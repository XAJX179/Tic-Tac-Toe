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
    sleep 1
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
    input = player.input until board.pos.include?(input)
    input
  end

  def self.handle_board(player, board, pos)
    board.update(pos - 1, player.sign)
    board.draw
  end

  def self.winner(player, board)
    won = check_win(player, board)
    if won
      board.winner = player.name
      player.won
      puts "Game Over."
    elsif check_draw(board)
      board.winner = "Tie"
      puts "It's a tie  ¯\\_(ツ)_/¯"
      puts "Game Over."
    end
  end

  def self.check_win(player, board)
    conditions = board.conditions
    result = false
    conditions.each do |condition|
      # because array index starts at 0
      result_array = [board.pos[condition[0] - 1], board.pos[condition[1] - 1], board.pos[condition[2] - 1]]
      if result_array.all?(player.sign)
        result = true
        break
      end
    end
    result
  end

  def self.check_draw(board)
    board.used.length == 9
  end
end
