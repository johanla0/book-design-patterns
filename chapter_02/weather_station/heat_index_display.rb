# frozen_string_literal: true

require './observer'
require './display_element'

class HeatIndexDisplay
  include Observer
  include DisplayElement

  attr_reader :weather_data, :heat_index

  def initialize(weather_data, args = {})
    @weather_data = weather_data
    weather_data.register_observer(self)
  end

  def update
    @heat_index = calculate_heat_index(weather_data.temperature, weather_data.humidity)
    display
  end

  def calculate_heat_index(temperature, humidity)
    t = temperature
    rh = humidity
    (
      16.923 + (0.185212 * t) + (5.37941 * rh) - (0.100254 * t * rh) +
      (0.00941695 * (t**2)) + (0.00728898 * (rh**2)) +
      (0.000345372 * ((t**2) * rh)) - (0.000814971 * (t * (rh**2))) +
      (0.0000102102 * ((t**2) * (rh**2))) - (0.000038646 * (t**3)) +
      (0.0000291583 * (rh**3)) + (0.00000142721 * ((t**3) * rh)) +
      (0.000000197483 * (t * (rh**3))) -
      (0.0000000218429 * ((t**3) * (rh**2))) +
      (0.000000000843296 * ((t**2) * (rh**3)))) -
      (0.0000000000481975 * ((t**3) * (rh**3)))
  end

  def display
    puts "Heat index is #{heat_index}"
  end
end
