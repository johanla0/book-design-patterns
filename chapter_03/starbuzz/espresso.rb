# frozen_string_literal: true

require './beverage'

class Espresso < Beverage
  def initialize(args = {})
    @description = 'Espresso'
    super(args)
  end

  def cost
    1.99
  end
end
