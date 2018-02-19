require 'matrix'
require_relative 'square'

class Board
  attr_accessor :squares, :piece_sets

  def initialize
    @squares = Matrix.build(8, 8) { |row, col| Square.new(row, col, :empty, square_color(row, col)) }
    @piece_sets = []
  end

  private

  def square_color(row, col)
    return :black if (col + row) % 2 == 0
    :white
  end
end
