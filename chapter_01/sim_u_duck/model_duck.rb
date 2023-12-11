# frozen_string_literal: true

require './duck'
require './quack'
require './fly_no_way'

class ModelDuck < Duck
  def initialize
    self.quack_behavior = Quack.new
    self.fly_behavior = FlyNoWay.new
  end

  def display
    puts 'I\'m a model duck'
  end
end
