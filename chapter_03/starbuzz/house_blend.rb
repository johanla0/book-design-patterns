# frozen_string_literal: true

require './beverage'

class HouseBlend < Beverage
  def initialize(args = {})
    @description = 'House Blend Coffee'
    super(args)
  end

  def cost
    0.89
  end
end
