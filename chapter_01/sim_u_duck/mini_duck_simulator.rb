# frozen_string_literal: true

require './mallard_duck'
require './model_duck'
require './fly_rocket_powered'

mallard = MallardDuck.new
mallard.perform_quack
mallard.perform_fly

model = ModelDuck.new
model.perform_fly
model.fly_behavior = FlyRocketPowered.new
model.perform_fly
