# require_relative 'lvl_enum'

class Level
  attr_accessor :level, :ship_location

  def initialize
    @ship_location = 0
    @level = {
      0 => ['✈', '-->'],
      1 => ['✈', '<<👾 🌑 >>', 10, '-->'],
      2 => ['✈', '<<👾 🌑 >>', 10, ' -->'],
      3 => ['✈', '<<🌑 >>', 0, ' -->'],
      4 => ['✈', '<<👾 🌑 >>', 10, ' -->'],
      5 => ['✈', '', 0, 'X']
    }
  end

  def draw
    puts self
  end

  def has_alien?
    @level[@ship_location][1].include? '👾'
  end

  def destroy_alien
      # regex = /[\u{1f300}-\u{1f5ff}]/
    @level[@ship_location][1] = '<< 🌑 >>'
  end

  def next(jump_amount)
    @ship_location += jump_amount
  end

  def to_s
    "#{level[@ship_location][0]} #{level[@ship_location][1]}"+
      "#{level[@ship_location][2]} #{level[@ship_location][3]}"+
      "#{level[@ship_location + 1][1]} #{level[@ship_location + 1][2]}"+
      "#{level[@ship_location + 1][3]}"
  end
end
