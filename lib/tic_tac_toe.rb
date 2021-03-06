require_relative "tic_tac_toe/version.rb"

module TicTacToe
  class Error < StandardError; end
end

require_relative './tic_tac_toe/cell.rb'
require_relative './tic_tac_toe/player.rb'
require_relative './tic_tac_toe/game.rb'
require_relative './tic_tac_toe/board.rb'
require_relative './tic_tac_toe/core_extensions.rb'