# frozen_string_literal: true

require_relative './pizza'

class NYCheesePizza < Pizza
  def initialize
    @name = 'NY Style Sauce and Cheese Pizza'
    @dough = 'Thin Crust Dough'
    @sauce = 'Marinara Sauce'
    @toppings = []
    @toppings << 'Grated Reggiano Cheese'
  end
end
