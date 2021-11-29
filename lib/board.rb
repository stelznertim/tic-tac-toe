# frozen_string_literal: true

# Creates the Board and updates it on change
class Board
  attr_reader :cells

  WINNING_OPTIONS = [[0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]].freeze

  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def show_board
    puts <<-BOARD
    #{cells[0]} | #{cells[1]} | #{cells[2]}
    --+---+--
    #{cells[3]} | #{cells[4]} | #{cells[5]}
    --+---+--
    #{cells[6]} | #{cells[7]} | #{cells[8]}
    BOARD
  end

  def update_board(number, symbol)
    cells[number - 1] = symbol
    show_board
    cells[number - 1]
  end

  def check_board
    WINNING_OPTIONS.any? do |item|
      ([cells[item[0]], cells[item[1]], cells[item[2]]].uniq.length == 1)
    end
  end
end
