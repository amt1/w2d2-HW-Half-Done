class Bus
  attr_reader :route_number, :destination
  attr_accessor :passengers
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum"
  end

  def pickup(passenger)
    @passengers << passenger
  end

end
