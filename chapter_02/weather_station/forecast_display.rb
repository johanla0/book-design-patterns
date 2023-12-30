# frozen_string_literal: true

require './observer'
require './display_element'

class ForecastDisplay
  include Observer
  include DisplayElement

  attr_reader :weather_data, :current_pressure, :last_pressure

  def initialize(weather_data, args = {})
    args = defaults.merge(args)
    @current_pressure = args[:current_pressure]
    @weather_data = weather_data
    weather_data.register_observer(self)
  end

  def update
    @last_pressure = @current_pressure
    @current_pressure = weather_data.pressure
    display
  end

  def make_forecast
    if @current_pressure > @last_pressure
      'Improving weather on the way!'
    elsif @current_pressure == @last_pressure
      'More of the same'
    else
      'Watch out for cooler, rainy weather'
    end
  end

  def display
    puts "Forecast: #{make_forecast}"
  end

  private

  def defaults
    { current_pressure: 29.92 }
  end
end
