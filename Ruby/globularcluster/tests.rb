# test.rb
require 'minitest/autorun'
require_relative 'ship'

class ShipTest < Minitest::Test
  def test_a_ship_can_be_created
    test_ship = Ship.new
    assert test_ship != nil
  end

  def test_a_ships_initial_velocity_with_no_input
    test_ship = Ship.new
    assert test_ship.velocity == 11.53
  end

  def test_a_ships_initial_velocity_with_input
    test_ship = Ship.new(:velocity => 4.20)
    assert test_ship.velocity == 4.20
  end

  def test_a_ships_initial_fuel_with_no_input
    test_ship = Ship.new
    assert test_ship.fuel == 15
  end

  def test_a_ships_initial_fuel_with_input
    test_ship = Ship.new(:fuel => 4.20)
    assert test_ship.fuel == 4.20
  end

  def test_a_ships_initial_dist_with_no_input
    test_ship = Ship.new
    assert test_ship.dist == '?'
  end

  def test_a_ships_initial_dist_with_input
    test_ship = Ship.new(:dist => 'Woah dude, you\'re way out there')
    assert test_ship.dist == 'Woah dude, you\'re way out there'
  end
end
