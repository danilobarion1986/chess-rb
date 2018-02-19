require 'piece'

class PieceSet
  attr_accessor :pieces, :owner
  PIECES = { king: 1, queen: 1, rook: 2, bishop: 2, knight: 2, pawn: 8 }

  def initialize(player)
    @pieces = create_pieces
    @owner = player
  end

  def create_pieces
    [].tap do |pieces|
      PIECES.each_pair do |name, count|
        for i in 1..count
          pieces << Piece.new(name)
        end
      end
    end
  end
end
