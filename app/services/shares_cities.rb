class SharesCities

  def initialize(city)
    @city = city
  end

  def share(state)
    @city.states << state
  end
end
