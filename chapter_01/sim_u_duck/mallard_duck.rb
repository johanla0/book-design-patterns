# frozen_string_literal: true

require './duck'
require './quack'
require './fly_with_wings'

class MallardDuck < Duck
  def initialize
    self.quack_behavior = Quack.new
    self.fly_behavior = FlyWithWings.new
  end

  def display
    puts 'I\'m a real Mallard duck'
  end
end
