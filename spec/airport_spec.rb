require "./lib/airport.rb"
describe "airport" do 
  it "By default is empty" do
    airport = Airport.new

    expect(airport.empty?).to be_truthy
  end 
end
