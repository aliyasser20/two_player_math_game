# frozen_string_literal: true

class Player
  attr_accessor :lives

  def initialize(id)
    @lives = 3
    @player_id = id
  end
end
