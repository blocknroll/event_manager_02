require 'minitest/autorun'
require 'minitest/pride'
require './lib/event_manager'

class EventManagerTest < Minitest::Test

  def test_it_exists
    event_manager = EventManager.new
    assert EventManager, event_manager
  end

end
