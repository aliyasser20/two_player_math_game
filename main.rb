# frozen_string_literal: true

require './player'
require './question'
# require './turn'
require './game'

player_one = Player.new(1)
player_two = Player.new(2)

game_one = Game.new
game_one.play_game(player_one, player_two)
