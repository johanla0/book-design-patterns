# frozen_string_literal: true

require './fly_behavior'

class FlyRocketPowered
  include FlyBehavior

  def fly
    puts 'I\'m flying with a rocket!'
  end
end
