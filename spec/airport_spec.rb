=begin
As an air traffic controller 
So I can get passengers to a destination 
I want to instruct a plane to land at an airport

As an air traffic controller 
So I can get passengers on the way to their destination 
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller 
To ensure safety 
I want to prevent landing when the airport is full 

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate

As an air traffic controller 
To ensure safety 
I want to prevent takeoff when weather is stormy 

As an air traffic controller 
To ensure safety 
I want to prevent landing when weather is stormy 
=end



require "./lib/airport.rb"
describe "#land" do 
  it "takes a plane and puts in the hangar" do
    # arrange -> gather all the objects we need
    airport = Airport.new
    plane = "BA123"
    # act -> execute the method under test
    airport.land(plane)
    # assert -> place some assertion regarding what the method should have done.
    expect(airport.hangar).to eq ["BA123"]
  end 
end

