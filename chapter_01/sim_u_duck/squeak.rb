# frozen_string_literal: true

require './quack_behavior'

class Quack
  include QuackBehavior

  def quack
    puts 'Squeak'
  end
end
