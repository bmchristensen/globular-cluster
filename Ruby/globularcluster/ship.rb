class Ship
  attr_accessor :velocity, :fuel, :dist, :ammo, :shield

  def initialize(params = {})
    @velocity = params.fetch(:velocity, 11.53)
    @fuel = params.fetch(:fuel, 15)
    @dist = params.fetch(:dist, '?')
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

  def refuel(amount)
    !amount.nil?
    @fuel += amount
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

  def take_damage
    @shield -= 20
  end

  def shield_destroyed?
    return false if (@shield > 0)
    shield_destroyed_message
    true
  end

  def shield_destroyed_message
    puts("You fought valiantly, but in the end your sheilds were not able to")
    puts("repel munitions of such magnitude.")
    puts("As the last of your shield capacitors run dry, you hear the crack")
    puts("of your shield discharge, and wait for the impending explosive")
    puts("decompresion that will be caused by the next volely of muntions from")
    puts("your opponent...")
    puts("You can only hope versions of yourself accross other timelines were")
    puts("more successful...")
    puts("\n\n")
    puts("\"I’ve seen things you people wouldn’t believe. Attack ships on fire ")
    puts("off the shoulder of Orion. I watched C-beams glitter in the dark near")
    puts("Tannhauser Gate. All these moments will be lost forever.")
    puts("Like tears in the rain.\"")
    puts("\n\n")
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
    puts("Your only comfort is that perhaps in another timeline, another")
    puts("universe, some version of yourself was successful...")
    puts("\n\n")
    puts("\"I’ve seen things you people wouldn’t believe. Attack ships on fire ")
    puts("off the shoulder of Orion. I watched C-beams glitter in the dark near")
    puts("Tannhauser Gate. All these moments will be lost forever.")
    puts("Like tears in the rain.\"")
    puts("\n\n")
  end
end
