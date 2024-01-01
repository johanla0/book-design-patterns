# frozen_string_literal: true

require './beverage'

class DarkRoast < Beverage
  def initialize(args = {})
    @description = 'Dark Roast Coffee'
    super(args)
  end

  def cost
    0.99
  end
end
