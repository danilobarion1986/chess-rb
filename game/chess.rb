require_relative '../board/board'
require_relative '../pieces/piece_set'

class Chess
  attr_reader :board, :pieces_player_A, :pieces_player_B

  def initialize(player_A, player_B)
    @pieces_player_A = PieceSet.new(player_A)
    @pieces_player_B = PieceSet.new(player_B)
    @board = Board.new
    @board.piece_sets << @pieces_player_A
    @board.piece_sets << @pieces_player_B
  end
end

puts Chess.new('danilo', 'alessandra').inspect
