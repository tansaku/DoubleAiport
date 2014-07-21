class Airport

  def has_planes? # query
    @planes
  end

  def land(plane) # command
    plane.landed?
    puts 'plane landed'
    @planes = true
  end

end
