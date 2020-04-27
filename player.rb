# frozen_string_literal: true

class Player
  attr_accessor :lives
  attr_reader :id

  def initialize(id)
    @lives = 3
    @id = id
  end
end
