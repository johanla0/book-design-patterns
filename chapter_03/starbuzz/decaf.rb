# frozen_string_literal: true

require './beverage'

class Decaf < Beverage
  def initialize(args = {})
    @description = 'Decaf Coffee'
    super(args)
  end

  def cost
    1.05
  end
end
