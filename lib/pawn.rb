# frozen_string_literal: true

class Pawn < Piece

  def initialize(location, owner, moved = false)
    super(location, owner)
    @moved = moved
  end

  def determine_display_value
    if @owner == 'light'
      "\u2659".encode('utf-8')
    elsif @owner == 'dark'
      "\u265F".encode('utf-8')
    end
  end

end
