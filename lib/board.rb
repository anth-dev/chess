# frozen_string_literal: true

class Board
  attr_reader :board

  def initialize(board = { :a => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :b => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } }, :c => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :d => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } }, :e => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :f => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } }, :g => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :h => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } } } )
    @board = board
  end

  def display_board
    system 'clear'

    puts %(
       A B C D E F G H
      8#{display_cell('a8')}#{display_cell('b8')}#{display_cell('c8')}#{display_cell('d8')}#{display_cell('e8')}#{display_cell('f8')}#{display_cell('g8')}#{display_cell('h8')}
      7#{display_cell('a7')}#{display_cell('b7')}#{display_cell('c7')}#{display_cell('d7')}#{display_cell('e7')}#{display_cell('f7')}#{display_cell('g7')}#{display_cell('h7')}
      6#{display_cell('a6')}#{display_cell('b6')}#{display_cell('c6')}#{display_cell('d6')}#{display_cell('e6')}#{display_cell('f6')}#{display_cell('g6')}#{display_cell('h6')}
      5#{display_cell('a5')}#{display_cell('b5')}#{display_cell('c5')}#{display_cell('d5')}#{display_cell('e5')}#{display_cell('f5')}#{display_cell('g5')}#{display_cell('h5')}
      4#{display_cell('a4')}#{display_cell('b4')}#{display_cell('c4')}#{display_cell('d4')}#{display_cell('e4')}#{display_cell('f4')}#{display_cell('g4')}#{display_cell('h4')}
      3#{display_cell('a3')}#{display_cell('b3')}#{display_cell('c3')}#{display_cell('d3')}#{display_cell('e3')}#{display_cell('f3')}#{display_cell('g3')}#{display_cell('h3')}
      2#{display_cell('a2')}#{display_cell('b2')}#{display_cell('c2')}#{display_cell('d2')}#{display_cell('e2')}#{display_cell('f2')}#{display_cell('g2')}#{display_cell('h2')}
      1#{display_cell('a1')}#{display_cell('b1')}#{display_cell('c1')}#{display_cell('d1')}#{display_cell('e1')}#{display_cell('f1')}#{display_cell('g1')}#{display_cell('h1')}
       A B C D E F G H
    )
  end

  def display_cell(location)
    x = location[0].to_sym
    y = location[1].to_sym

    background_color = board[x][y][:bg]

    if background_color == 'light'
      "\e[47m#{'  '}\e[0m"
    elsif background_color == 'dark'
      "\e[40m#{'  '}\e[0m"
    end
  end
end
