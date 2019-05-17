class Ship
  attr_accessor :velocity, :fuel, :dist, :ammo, :shield

  def initialize
    @velocity = 11.53
    @fuel = 15
    @dist = '?'
    @ammo = 10
    @shield = 100
  end

  def draw
    puts self
  end

  def to_s
    "    -----------------------------
    |velocity   : #{velocity} km/s\t|
    |fuel       : #{fuel} tons\t|
    |dist_to_end: #{dist} parsecs\t|
    |munition   : #{ammo} torpedos\t|
    |shield     : #{shield} %\t\t|
    -----------------------------"
  end

  def attack
    return (puts "Out of munitions!") if @ammo <= 0
    @ammo -= 1
  end

  def take_direct_route
    @fuel -= 5
  end

  def take_circuitous_route
    @fuel -= 10
  end

  def out_of_fuel?
    return false if (@fuel > 0)
    out_of_fuel_message
    true
  end

  def out_of_fuel_message
    puts("You ran out of fuel. Floating in the dark void of space,")
    puts("you can only wait for starvation, suffication, or for a")
    puts("roving muarder clan to put you out of your misery...")
    puts("Your only solace is that perhaps in another timeline, another")
    puts("universe, some version of yourself was successful...")
  end
end
