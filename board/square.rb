# frozen_string_literal: true

require_relative 'square_options'

class Square
  include SquareOptions

  attr_reader :x, :y, :info

  def initialize(x, y)
    @x = x
    @y = y
    @info = { color: color(x, y), state: SquareOptions::STATES[:empty], piece: nil }
  end

  def fill
    info[:state] = PieceOptions::STATES[:occupied]
  end

  def empty
    info[:state] = PieceOptions::STATES[:empty]
  end

  private

  def color(row, col)
    return SquareOptions::COLORS[:black] if (col + row) % 2 == 0
    SquareOptions::COLORS[:white]
  end
end
