# frozen_string_literal: true

class Game
  def initialize
    @current_player
  end

  def play_turn
    new_question = Question.new

    puts "Player #{@current_player.id}: #{new_question.question}"

    input = gets.chomp.to_i

    if input == new_question.answer
      puts "Player #{@current_player.id}: YES! You are correct."
    else
      puts "Player #{@current_player.id}: Seriously? No!"
      @current_player.lives -= 1
    end
  end

  def play_game(player_one, player_two)
    @current_player = player_one

    while player_one.lives > 0 && player_two.lives > 0
      puts '---- NEW TURN ----'
      play_turn

      next unless player_one.lives > 0 && player_two.lives > 0

      puts "P#{player_one.id}: #{player_one.lives}/3 vs P#{player_two.id}: #{player_two.lives}/3"

      @current_player = if @current_player == player_one
                          player_two
                        else
                          player_one
                        end
    end

    display_winner(player_two) if player_one.lives == 0
    display_winner(player_one) if player_two.lives == 0
  end

  def display_winner(player)
    puts "Player #{player.id} wins with a score of #{player.lives}/3"
    puts '---- GAME OVER ----'
    puts 'Good bye!'
  end
end
