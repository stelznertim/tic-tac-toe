# frozen_string_literal: true

require_relative 'player'
require_relative 'board'
# all the logic needed to execute the game
class Game
  def initialize
    @first_player = Player.new('X', 'Tim')
    @second_player = Player.new('O', 'Peter')
    @current_player = @first_player
    @board = nil
  end

  def start_game
    @board = Board.new
    @first_player.user_intro(1)
    @second_player.user_intro(2)
    @board.show_board
  end

  def play_round(is_taken_number: false)
    puts 'Invalid Number. Choose another one next time.' if is_taken_number
    @current_player.turn_notification
    number = gets.chomp.to_i
    if @board.cells[number - 1] == number
      @board.update_board(number,
                          @current_player.symbol)
    else
      play_round(is_taken_number: true)
    end
  end

  def play_game
    start_game
    round = 0
    is_a_winner = false
    until is_a_winner || round == 9
      play_round
      is_a_winner = @board.check_board
      round += 1
      @current_player = swap_current_player unless is_a_winner
    end
    is_a_winner ? puts("Congratulations! #{@current_player.name} you have won.") : puts("It's a draw")
  end

  def swap_current_player
    @current_player == @first_player ? @second_player : @first_player
  end
end

game = Game.new
game.play_game
