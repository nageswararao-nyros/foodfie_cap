require "rails_helper"

context 'Location Queries' do
  it 'Creating the location' do
    x =  Location.new(:location=>"Kakinada")
    expect(x).to be_valid
  end
end