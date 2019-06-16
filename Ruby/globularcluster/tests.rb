# test.rb
require 'minitest/autorun'
require_relative 'ship'

class ShipTest < Minitest::Test
  def test_a_ship_can_be_created
    test_ship = Ship.new
    assert test_ship != nil
  end

  def test_a_ships_initial_velocity
    test_ship = Ship.new
    test_ship_2 = Ship.new(:velocity => 4.20)
    assert test_ship.velocity == 11.53
    assert test_ship_2.velocity == 4.20
  end
end
