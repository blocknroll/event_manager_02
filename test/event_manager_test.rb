require 'minitest/autorun'
require 'minitest/pride'
require './lib/event_manager'

class EventManagerTest < Minitest::Unit::TestCase

  def test_it_exists
    event_manager = EventManager.new
    assert_kind_of EventManager, event_manager
  end

end
