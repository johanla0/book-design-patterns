# frozen_string_literal: true

class DataSource
  class << self
    def generate_data
      {
        temperature: rand(75..85),
        humidity:  rand(60..90),
        pressure: rand(29.0..31.0)
      }
    end
  end
end
