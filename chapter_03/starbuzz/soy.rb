# frozen_string_literal: true

require './condiment_decorator'

class Soy < CondimentDecorator
  def description
    "#{@beverage.description}, Soy"
  end

  def price
    { tall: 0.1,
      grande: 0.15,
      venti: 0.2 }[size]
  end
end
