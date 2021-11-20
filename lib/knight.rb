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
end
