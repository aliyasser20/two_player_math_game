# frozen_string_literal: true

class Game
  def initialize
    @current_player
  end

  def play_game(player_one, player_two, _play_turn)
    @current_player = player_one

    while player_one.lives.positive || player_two.lives.positive
      play_turn(@current_player.id, Question.new)
    end
  end
end
