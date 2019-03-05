require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")


class BusTest < MiniTest::Test

  def setup
    @passenger = Person.new('Stanley', 16)
    @bus = Bus.new('22', 'Ocean Terminal')
  end

  def test_bus_get_route_number
    assert_equal('22', @bus.route_number)
  end

  def test_bus_get_destination
    assert_equal('Ocean Terminal', @bus.destination)
  end

  def test_bus_drive
    assert_equal('Brum Brum', @bus.drive)
  end

  def test_bus_passenger_count__initial
    assert_equal(0, @bus.passengers.count)
  end

  def test_bus_passenger_count
    assert_equal(0, @bus.passengers.count)
  end

  def test_bus_passenger_pickup
    @bus.pickup(@passenger)
    assert_equal(@passenger, @bus.passengers[-1])
  end


end
