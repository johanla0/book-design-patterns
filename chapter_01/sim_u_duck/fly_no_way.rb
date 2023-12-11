# frozen_string_literal: true

require './fly_behavior'

class FlyNoWay
  include FlyBehavior

  def fly
    puts 'I can\'t fly'
  end
end
