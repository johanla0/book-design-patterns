# frozen_string_literal: true

require './subject'

class WeatherData
  include Subject

  attr_reader :observers, :temperature, :humidity, :pressure

  def initialize
    @observers = []
  end

  def register_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    filtered_observers = @observers.reject { |o| o == observer }
    @observers = filtered_observers
  end

  def notify_observers
    @observers.each(&:update)
  end

  def measurement_changed
    notify_observers
  end

  def set_measurements(args = {})
    @temperature = args.fetch(:temperature, 0)
    @humidity = args.fetch(:humidity, 0)
    @pressure = args.fetch(:pressure, 0)
    measurement_changed
  end
end
