# frozen_string_literal: true

require './weather_data'
require './current_conditions_display'
require './statistics_display'
require './forecast_display'
require './heat_index_display'
require './data_source'

weather_data = WeatherData.new
CurrentConditionsDisplay.new(weather_data)
StatisticsDisplay.new(weather_data)
ForecastDisplay.new(weather_data)
HeatIndexDisplay.new(weather_data)

weather_data.set_measurements(DataSource.generate_data)
weather_data.set_measurements(DataSource.generate_data)
weather_data.set_measurements(DataSource.generate_data)
