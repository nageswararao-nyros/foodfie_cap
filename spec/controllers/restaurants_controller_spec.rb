require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do

  it "Getting all Dish Records" do

    expect(:get => "/restaurants/1").to be_routable
    puts "DDDDDDDDDDDDDDDDDDDDDd"
    # get :show
    # expect(response.status).to render_template(:show)
    # expect(response.status).to eq(200)
  end
end
