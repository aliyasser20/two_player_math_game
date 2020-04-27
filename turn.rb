# frozen_string_literal: true

class Turn
  def initialize
    # @play = play
    @current_player_id = 1
  end

  def play_turn(question)
    puts "Player #{@current_player_id}: #{question}"
    input = gets.chomp
    puts input
  end
end

turn_one = Turn.new
turn_one.play_turn('hello')
