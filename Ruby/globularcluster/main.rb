#!/usr/bin/env ruby

require_relative 'ship'
require_relative 'level'

class GlobularCluster
  attr_accessor :ship, :level

  def initialize
    @ship = Ship.new
    @level = Level.new
  end

  def draw
    puts `clear`
    # This clear call should be refactored, right now it is clearing in game
    # messages, such as "out of munitions" or "enemy destroyed"
    level.draw
    ship.draw
  end

  def update
    if level.has_alien?
      ship.take_damage
      draw
    end
    return reset_game if ship.out_of_fuel? | ship.shield_destroyed?
    # For the love of God we need to set above up with observer pattern
    key_pressed(gets.chomp)
  end

  def reset_game
    @ship = Ship.new
    @level = Level.new
    key_pressed(gets.chomp)
    show
  end

  def show
    puts `clear`
    title = File.read('title_sequence.txt')
    puts(title)
    puts("\n\n\n\n")

    key_pressed(gets.chomp)

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
      level.destroy_alien
    elsif key == 'q'
      exit()
    end
  end
end

GlobularCluster.new.show
