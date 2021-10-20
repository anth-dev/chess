# frozen_string_literal: true
require 'pry'

class Board
  attr_reader :board

  def initialize(board = Array.new(8) { Array.new(8, nil) } )
    @board = board
  end
end

binding.pry
puts 'test'
