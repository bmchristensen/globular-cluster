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
    level.draw
    ship.draw
  end

  def update
    return reset_game if ship.out_of_fuel? | ship.shield_destroyed?
    # For the love of God we need to set above up with observer pattern
    key_pressed(gets.chomp)
  end

  def reset_game
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
    elsif key == 'x'
      ship.take_damage
    end
  end
end

GlobularCluster.new.show
