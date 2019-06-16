# test.rb
require 'minitest/autorun'
require_relative 'ship'

class ShipTest < Minitest::Test
  def test_a_ship_can_be_created
    test_ship = Ship.new
    assert test_ship != nil
  end
end
