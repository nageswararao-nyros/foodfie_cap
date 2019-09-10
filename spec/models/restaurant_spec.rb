require "rails_helper"

context 'Restaurant Queries' do
  it 'Creating the new Restaurant' do
    restaurant =  Restaurant.create(name: "RL Grand", location_id: 5, seatings: 250, string: "dddddd").save 
    expect(restaurant).to eq(false)
  end
end