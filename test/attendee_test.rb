require 'minitest/autorun'
require 'minitest/pride'
require './lib/attendee'

class AttendeeTest < Minitest::Test

  def test_it_exists
    attendee = Attendee.new
    assert Attendee, attendee
  end

  def test_it_is_initialized_from_a_hash_of_data
    data = {:first_name => 'George', :last_name => 'Washington', :phone_number => '2024556677'}
    attendee = Attendee.new(data)
    assert_equal data[:first_name], attendee.first_name
    assert_equal data[:last_name], attendee.last_name
    assert_equal data[:phone_number], attendee.phone_number
  end

  def test_it_can_change_first_names
    data = {:first_name => "George"}
    attendee = Attendee.new(data)
    assert_equal data[:first_name], attendee.first_name
    attendee.first_name = "Thomas"
    assert_equal "Thomas", attendee.first_name
  end

  def test_it_can_change_last_names
    data = {:last_name => "Washington"}
    attendee = Attendee.new(data)
    assert_equal data[:last_name], attendee.last_name
    attendee.last_name = "Jefferson"
    assert_equal "Jefferson", attendee.last_name
  end

  def test_it_can_change_phone_numbers
    data = {:phone_number => "2024556677"}
    attendee = Attendee.new(data)
    assert_equal data[:phone_number], attendee.phone_number
    attendee.phone_number = "8088675309"
    assert_equal "8088675309", attendee.phone_number
  end

  def test_it_cleans_phone_numbers_with_extra_characters
    attendee = Attendee.new(:phone_number => "808-867.5309")
    assert_equal "8088675309", attendee.phone_number
  end

  def test_it_cleans_phone_numbers_with_spaces_and_parentheses
    attendee = Attendee.new(:phone_number => "(808) 867 5309")
    assert_equal "8088675309", attendee.phone_number
  end

  def test_it_removes_leading_one_from_11_digit_number
    attendee = Attendee.new(:phone_number => "18008885555")
    assert_equal "8008885555", attendee.phone_number
  end

  def test_it_throws_away_numbers_that_are_too_long
    attendee = Attendee.new(:phone_number => "80088855557")
    assert_equal "0000000000", attendee.phone_number
  end

  def test_it_throws_away_numbers_that_are_too_short
    attendee = Attendee.new(:phone_number => "800888555")
    assert_equal "0000000000", attendee.phone_number
  end

end
