# frozen_string_literal: true

require_relative './creators/chicago_pizza_store'
require_relative './creators/ny_pizza_store'

pizza = ChicagoPizzaStore.new.order(:cheese)
puts "Ordered #{pizza.name}"
puts
pizza = NYPizzaStore.new.order(:pepperoni)
puts "Ordered #{pizza.name}"
