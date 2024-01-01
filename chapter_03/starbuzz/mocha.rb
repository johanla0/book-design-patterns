# frozen_string_literal: true

require './condiment_decorator'

class Mocha < CondimentDecorator
  def description
    "#{@beverage.description}, Mocha"
  end

  def price
    { tall: 0.15,
      grande: 0.2,
      venti: 0.25 }[size]
  end
end
