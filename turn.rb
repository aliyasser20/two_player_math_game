# frozen_string_literal: true

# class Turn
def play_turn(current_player_id, question)
  puts "Player #{current_player_id}: #{question}"
  input = gets.chomp
  puts input
end
# end

turn_one = Turn.new
turn_one.play_turn(3, 'hello')
