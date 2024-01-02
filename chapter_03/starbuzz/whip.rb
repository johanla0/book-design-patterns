# frozen_string_literal: true

require './condiment_decorator'

class Whip < CondimentDecorator
  def description
    "#{@beverage.description}, Whip"
  end

  def condiment_price
    { tall: 0.05,
      grande: 0.1,
      venti: 0.15 }[size]
  end
end
