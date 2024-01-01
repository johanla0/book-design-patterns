# frozen_string_literal: true

class Beverage
  SIZES = %i[tall grande venti].freeze

  attr_reader :description, :size

  def initialize(args = {})
    args = defaults.merge(args)
    raise "Unknown size: #{args[:size]}" unless SIZES.include?(args[:size])

    @size = args[:size]
  end

  def cost
    raise NotImplementedError
  end

  private

  def defaults
    { size: :tall }
  end
end
