# frozen_string_literal: true

require_relative 'pieces/piece_set'

piece_set = PieceSet.new('Danilo')
p piece_set.total_dead
p piece_set.total_alive
p piece_set.pieces
