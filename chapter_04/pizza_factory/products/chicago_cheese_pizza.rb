# frozen_string_literal: true

require_relative './pizza'

class ChicagoCheesePizza < Pizza
  def initialize
    @name = 'Chicago Style Deep Dish Cheese Pizza'
    @dough = 'Extra Thick Crust Dough'
    @sauce = 'Plum Tomato Sauce'
    @toppings = []
    @toppings << 'Shredded Mozzarella Cheese'
  end

  def cut
    puts 'Cutting the pizza into square slices'
  end
end
