# frozen_string_literal: true

require_relative 'piece_options'

class Piece
  include PieceOptions

  attr_reader :name, :state

  def initialize(name)
    @name = name
    @state = PieceOptions::STATES[:alive]
  end

  def kill
    @state = PieceOptions::STATES[:dead]
  end

  def resurrect
    @state = PieceOptions::STATES[:alive]
  end
end
