class Level
  attr_accessor :level, :ship_location

  def initialize
    @ship_location = 'first'
    @level = {
      'first' => ['👾', '🌑', 5],
      'second' => ['alien: True', 'fuel: 0'],
      'third' => ['alien: False', 'fuel: 0'],
      'fourth' => ['alien: True', 'fuel: 1'],
      'end' => ['alien: False', 'fuel: 0']
    }
  end

  def draw
    puts self
  end

  def to_s
    # puts(level['first'][0])
    "✈️ --> #{level[@ship_location][0]} #{level[@ship_location][1]} --> 👾️ 🌑️  --> 🌑️  --> 🌑️ 👾  --> 'end'"
  end
end
