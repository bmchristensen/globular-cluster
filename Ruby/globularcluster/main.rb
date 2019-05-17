#!/usr/bin/env ruby

require_relative 'ship'
require_relative 'level'

class GlobularCluster
  attr_accessor :ship
  attr_accessor :level

  def initialize
    @ship = Ship.new
    @level = Level.new
  end

  def draw
    level.draw
    ship.draw
  end

  def update
    return reset_game if ship.out_of_fuel? # Look into observer pattern
    key_pressed(gets.chomp)
  end

  def reset_game
    puts("You ran out of fuel. Floating in the dark void of space,")
    puts("you can only wait for starvation, suffication, or for a")
    puts("roving muarder clan to put you out of your misery...")
    puts("Your only solace is that perhaps in another timeline, another")
    puts("universe, some version of yourself was successful...")
    @ship = Ship.new
    @level = Level.new
    show
  end

  def show
    title = File.read('title_sequence.txt')
    puts(title)
    puts("\n\n\n\n")

    loop do
      update
      draw
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.take_direct_route
    elsif key == 'd'
      ship.take_circuitous_route
    elsif key == ' '
      ship.attack
    end
  end
end

GlobularCluster.new.show
