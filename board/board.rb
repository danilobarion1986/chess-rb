# frozen_string_literal: true

require 'matrix'
require_relative 'square'
require_relative '../pieces/piece_set'

class Board
  attr_accessor :squares, :piece_sets

  def initialize(player_A, player_B)
    @squares = Matrix.build(8, 8) { |row, col| Square.new(row, col) }
    @piece_sets = { piece_set_A: PieceSet.new(player_A), piece_set_B: PieceSet.new(player_B) }

    distribute_pieces
  end

  private

  def distribute_pieces
    # Logic here
  end
end
