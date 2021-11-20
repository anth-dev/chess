# frozen_string_literal: true

class Knight < Piece

  def initialize(location, owner)
    super(location, owner)
  end

  def determine_display_value
    if @owner == 'light'
      "\u2658".encode('utf-8')
    elsif @owner == 'dark'
      "\u265E".encode('utf-8')
    end
  end

  def find_adjacent_moves
    adjacent_moves = []

    x = @location[0].to_i
    y = @location[1].to_i

    adjacent_moves << [x - 1, y - 2]
    adjacent_moves << [x - 2, y - 1]
    adjacent_moves << [x - 2, y + 1]
    adjacent_moves << [x - 1, y + 2]
    adjacent_moves << [x + 1, y + 2]
    adjacent_moves << [x + 2, y + 1]
    adjacent_moves << [x + 2, y - 1]
    adjacent_moves << [x + 1, y - 2]

    adjacent_moves.filter do |move|
      (move[0] >= 0 && move[0] <= 7) && (move[1] >= 0 && move[1] <= 7)
    end
  end
end
