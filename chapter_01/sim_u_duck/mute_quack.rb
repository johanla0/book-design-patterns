# frozen_string_literal: true

require './quack_behavior'

class MuteQuack
  include QuackBehavior

  def quack
    puts '<< Silence >>'
  end
end
