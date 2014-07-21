require 'airport'

describe Airport do
  it 'starts with no planes' do  # query
    airport = Airport.new
    expect(airport).not_to have_planes # checking response to query
  end
  it 'has one plane' do  # command
    airport = Airport.new
    plane = double(:plane, landed?: true)
    airport.land(plane)
    expect(airport).to have_planes # check for state change
  end
  it 'when planes land there should be report' do # command
    airport = Airport.new
    plane = double(:plane, landed?: true)
    expect(airport).to receive(:puts).with 'plane landed' # checking outbound communication to other entities 
    airport.land(plane)
    expect(airport).to have_planes
  end
end


    # 1. what method are we testing?
    
    # 2. what arguments do we pass (if any)
    # 3. what return value do we get (if any) <-- query
    # 4. what state change should there be (if any) <-- command

    # class method
    #Airport.have_planes?

    # instance method
    #airport.have_planes?
