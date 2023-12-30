# frozen_string_literal: true

require './observer'
require './display_element'

class StatisticsDisplay
  include Observer
  include DisplayElement

  attr_reader :weather_data, :maximal_temperature, :minimal_temperature, :measurements

  def initialize(weather_data, args = {})
    args = defaults.merge(args)
    @maximal_temperature = args[:maximal_temperature]
    @minimal_temperature = args[:minimal_temperature]
    @measurements = []
    @weather_data = weather_data
    weather_data.register_observer(self)
  end

  def update
    temperature = weather_data.temperature
    @measurements << temperature
    @maximal_temperature = temperature if temperature > @maximal_temperature
    @minimal_temperature = temperature if temperature < @minimal_temperature
    display
  end

  def average_temperature
    @measurements.sum / @measurements.size
  end

  def display
    puts "Avg/Max/Min temperature: #{average_temperature}/#{@maximal_temperature}/#{@minimal_temperature}"
  end

  private

  def defaults
    { maximal_temperature: 0.0,
      minimal_temperature: 200.0 }
  end
end
