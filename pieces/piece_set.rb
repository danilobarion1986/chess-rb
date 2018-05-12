# frozen_string_literal: true

require_relative './piece'
require_relative './piece_options'

class PieceSet
  include PieceOptions

  attr_reader :pieces, :owner
  PIECES_AND_QUANTITIES = { king: 1, queen: 1, rook: 2, bishop: 2, knight: 2, pawn: 8 }

  def initialize(player)
    @pieces = create_pieces
    @owner = player
  end

  def create_pieces
    [].tap do |pieces|
      PIECES_AND_QUANTITIES.each_pair do |name, count|
        count.times do
          pieces << Piece.new(name)
        end
      end
    end
  end

  def total_dead
    pieces.count { |piece| piece.state == PieceOptions::STATES[:dead] }
  end

  def total_alive
    pieces.count { |piece| piece.state == PieceOptions::STATES[:alive] }
  end
end
