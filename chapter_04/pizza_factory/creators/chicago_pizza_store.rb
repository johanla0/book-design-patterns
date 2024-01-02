# frozen_string_literal: true

require_relative './pizza_store'
require_relative '../products/chicago_cheese_pizza'
require_relative '../products/chicago_pepperoni_pizza'

class ChicagoPizzaStore < PizzaStore
  def create(type, args = {})
    case type
    when :cheese then ChicagoCheesePizza.new
    when :pepperoni then ChicagoPepperoniPizza.new
    end
  end
end
