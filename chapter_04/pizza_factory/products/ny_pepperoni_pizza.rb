# frozen_string_literal: true

require_relative './pizza'

class NYPepperoniPizza < Pizza
  def initialize
    @name = 'NY Style Pepperoni Pizza'
    @dough = 'Thin Crust Dough'
    @sauce = 'Marinara Sauce'
    @toppings = []
    @toppings << 'Shredded Mozzarella Cheese'
  end
end
