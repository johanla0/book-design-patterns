# frozen_string_literal: true

require './beverage'

class CondimentDecorator < Beverage
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage

    super({ size: @beverage.size })
  end

  def description
    raise NotImplementedError
  end

  def price
    raise NotImplementedError
  end

  def cost
    (@beverage.cost + price).round(2)
  end
end
