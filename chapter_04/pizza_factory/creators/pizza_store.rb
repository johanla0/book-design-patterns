# frozen_string_literal: true

class PizzaStore
  def order(type, args = {})
    pizza = create(type, args)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end

  def create(type, args)
    raise NotImplementedError
  end
end
