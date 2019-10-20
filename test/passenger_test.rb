require 'minitest/autorun'
require 'minitest/pride'
require './lib/passenger.rb'

class PassengerTest < Minitest::Test

  def test_it_exists
    passenger = Passenger.new
    assert_instance_of Passenger, passenger
  end

  def test_it_has_attributes
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    assert_equal "Charlie", charlie.name
    assert_equal "Charlie", charlie.name

    assert_equal 18, charlie.age
    assert_equal true, charlie.adult?
    assert_equal false, taylor.adult?
  end

  def test_passenger_is_a_driver
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    assert_equal false, charlie.driver
    charlie.drive
    assert_equal true, charlie.driver
    
  end

end
