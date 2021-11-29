# frozen_string_literal: true

# Game needs two players
class Player
  attr_reader :symbol, :name

  def initialize(symbol, name)
    @symbol = symbol
    @name = name
  end

  def user_intro(number)
    string = "Hello #{name} your Symbol is #{symbol} and you are Player No.#{number}"
    puts string
    string
  end

  def turn_notification
    puts "#{name} please enter the number where you  want to place your #{symbol}: "
    "#{name} please enter the number where you  want to place your #{symbol}: "
  end
end
