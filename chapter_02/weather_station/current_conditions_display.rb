# frozen_string_literal: true

require './observer'
require './display_element'

class CurrentConditionsDisplay
  include Observer
  include DisplayElement

  attr_reader :weather_data, :temperature, :humidity, :pressure

  def initialize(weather_data)
    @weather_data = weather_data
    weather_data.register_observer(self)
  end

  def update
    @temperature = weather_data.temperature
    @humidity = weather_data.humidity
    display
  end

  def display
    puts "Current conditions: #{@temperature} C degrees and #{@humidity} % humidity"
  end
end
