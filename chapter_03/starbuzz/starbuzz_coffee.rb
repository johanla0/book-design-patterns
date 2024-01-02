# frozen_string_literal: true

require './espresso'
require './dark_roast'
require './house_blend'
require './mocha'
require './whip'
require './soy'

beverages = []
beverages << Espresso.new
beverages << Mocha.new(
  Mocha.new(
    Whip.new(
      DarkRoast.new
    )
  )
)
beverages << Whip.new(
  Mocha.new(
    Soy.new(
      HouseBlend.new({ size: :venti })
    )
  )
)
beverages << Whip.new(
  Mocha.new(
    Espresso.new({ size: :grande })
  )
)

beverages.each { |b| puts "#{b.size.capitalize} #{b.description} $#{b.cost}" }
