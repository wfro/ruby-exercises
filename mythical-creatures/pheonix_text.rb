gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pheonix'

class PheonixTest < Minitest::Test
  def test_it_has_a_name
    pheonix = Pheonix.new("Roger")
    assert_equal "Roger", pheonix.name
  end

  def test_it_has_another_name
    pheonix = Pheonix.new("Phil")
    assert_equal "Phil", pheonix.name
  end

  def test_is_alive_by_default
    pheonix = Pheonix.new("Roger")
    assert pheonix.alive?
  end


  def test_rises_from_the_ashes
    pheonix = Pheonix.new("Roger")
    pheonix.kill
    refute pheonix.alive?
    pheonix.rebirth
    assert pheonix.alive?
  end

  def test_can_only_be_killed_while_alive
    pheonix = Pheonix.new("Roger")
    pheonix.kill
    assert_equal nil, pheonix.kill
  end

  def test_can_only_rise_while_dead
    pheonix = Pheonix.new("Roger")
    assert_equal nil, pheonix.rebirth
  end
end
