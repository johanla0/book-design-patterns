# frozen_string_literal: true

require_relative './pizza_store'
require_relative '../products/ny_cheese_pizza'
require_relative '../products/ny_pepperoni_pizza'

class NYPizzaStore < PizzaStore
  def create(type, args = {})
    case type
    when :cheese then NYCheesePizza.new
    when :pepperoni then NYPepperoniPizza.new
    end
  end
end
