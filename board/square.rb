require_relative 'square_options'

class Square
  include SquareOptions

  attr_reader :color, :x, :y
  attr_accessor :state

  def initialize(x, y, state = :empty, color = :white)
    @x = x
    @y = y
    @state = SquareOptions::STATES[state]
    @color = SquareOptions::COLORS[color]
  end

  def change_state(state = :filled)
    @state = PieceOptions::STATES[state]
  end
end
