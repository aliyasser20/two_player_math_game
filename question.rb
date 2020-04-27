# frozen_string_literal: true

class Question
  attr_reader :question, :answer

  def initialize
    number_one = rand(1..20)
    number_two = rand(1..20)
    @question = "What does #{number_one} plus #{number_two} equal?"
    @answer = number_1 + number_2
  end
end
