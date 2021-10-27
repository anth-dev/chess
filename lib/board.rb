# frozen_string_literal: true
require 'pry'

class Board
  attr_reader :board

  def initialize(board = { :a => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :b => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } }, :c => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :d => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } }, :e => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :f => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } }, :g => { :"1" => { :bg => 'dark', :here => nil }, :"2" => { :bg => 'light', :here => nil }, :"3" => { :bg => 'dark', :here => nil }, :"4" => { :bg => 'light', :here => nil }, :"5" => { :bg => 'dark', :here => nil }, :"6" => { :bg => 'light', :here => nil }, :"7" => { :bg => 'dark', :here => nil }, :"8" => { :bg => 'light', :here => nil } }, :h => { :"1" => { :bg => 'light', :here => nil }, :"2" => { :bg => 'dark', :here => nil }, :"3" => { :bg => 'light', :here => nil }, :"4" => { :bg => 'dark', :here => nil }, :"5" => { :bg => 'light', :here => nil }, :"6" => { :bg => 'dark', :here => nil }, :"7" => { :bg => 'light', :here => nil }, :"8" => { :bg => 'dark', :here => nil } } } )
    @board = board
  end

  def display_board
    system 'clear'

    puts %(
       A B C D E F G H
      8#{display_cell(0,7)}#{display_cell(1,7)}
      7
      6
      5
      4
      3
      2
      1
       A B C D E F G H
    )
  end

  def display_cell(x, y)
    # The following is just to test using colors for now.
    if x == 0
      return "\e[47m#{'  '}\e[0m"
    elsif x == 1
      return "\e[40m#{'  '}\e[0m"
    end
  end
end

binding.pry
puts 'stop for pry'

