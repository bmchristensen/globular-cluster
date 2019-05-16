#!/usr/bin/env ruby

require_relative 'ship'
require_relative 'hud'

class GlobularCluster
  attr_accessor :ship
  attr_accessor :hud

  def initialize
    @ship = Ship.new
    @hud = Hud.new
  end

  def draw
    hud.draw
    ship.draw
  end

  def show
    title = File.read('title_sequence.txt')
    puts(title)
    puts("\n\n\n\n")

    loop do
      # update
      draw
      key_pressed(gets.chomp)
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
