# frozen_string_literal: true

class Board
  attr_reader :board

  def initialize(board = [
    [
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil }
    ],
    [
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil }
    ],
    [
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil }
    ],
    [
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil }
    ],
    [
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil }
    ],
    [
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil }
    ],
    [
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil }
    ],
    [
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil },
      { bg: 'light', here: nil },
      { bg: 'dark', here: nil }
    ]])

    @board = board
  end

  def display_board
    system 'clear'

    puts %(
       A B C D E F G H
      8#{display_cell('07')}#{display_cell('17')}#{display_cell('27')}#{display_cell('37')}#{display_cell('47')}#{display_cell('57')}#{display_cell('67')}#{display_cell('77')}
      7#{display_cell('06')}#{display_cell('16')}#{display_cell('26')}#{display_cell('36')}#{display_cell('46')}#{display_cell('56')}#{display_cell('66')}#{display_cell('76')}
      6#{display_cell('05')}#{display_cell('15')}#{display_cell('25')}#{display_cell('35')}#{display_cell('45')}#{display_cell('55')}#{display_cell('65')}#{display_cell('75')}
      5#{display_cell('04')}#{display_cell('14')}#{display_cell('24')}#{display_cell('34')}#{display_cell('44')}#{display_cell('54')}#{display_cell('64')}#{display_cell('74')}
      4#{display_cell('03')}#{display_cell('13')}#{display_cell('23')}#{display_cell('33')}#{display_cell('43')}#{display_cell('53')}#{display_cell('63')}#{display_cell('73')}
      3#{display_cell('02')}#{display_cell('12')}#{display_cell('22')}#{display_cell('32')}#{display_cell('42')}#{display_cell('52')}#{display_cell('62')}#{display_cell('72')}
      2#{display_cell('01')}#{display_cell('11')}#{display_cell('21')}#{display_cell('31')}#{display_cell('41')}#{display_cell('51')}#{display_cell('61')}#{display_cell('71')}
      1#{display_cell('00')}#{display_cell('10')}#{display_cell('20')}#{display_cell('30')}#{display_cell('40')}#{display_cell('50')}#{display_cell('60')}#{display_cell('70')}
       A B C D E F G H
    )
  end

  def display_cell(location)
    x = location[0].to_i
    y = location[1].to_i
  
    display_value = (@board[x][y][:here].determine_display_value << ' ') if @board[x][y][:here]

    background_color = board[x][y][:bg]

    if background_color == 'light'
      "\e[47m#{display_value || '  '}\e[0m"
    elsif background_color == 'dark'
      "\e[40m#{display_value || '  '}\e[0m"
    end
  end

end
