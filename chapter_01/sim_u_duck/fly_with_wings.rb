# frozen_string_literal: true

require './fly_behavior'

class FlyWithWings
  include FlyBehavior

  def fly
    puts 'I\'m flying!!'
  end
end
