require_relative 'piece_options'

class Piece
  include PieceOptions

  attr_reader :name, :state

  def initialize(name)
    @name = name
    @state = PieceOptions::STATES[:alive]
  end

  def change_state(state = :dead)
    @state = PieceOptions::STATES[state]
  end
end
