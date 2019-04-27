require "tic_tac_toe/version"
require_relative "tic_tac_toe/version"

module TicTacToe
  class Error < StandardError; end
end

require_relative './tic_tac_toe/cell.rb'
require_relative './tic_tac_toe/player.rb'