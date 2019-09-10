require 'rails_helper'

RSpec.describe DishesController, type: :controller do

  it "Getting all Dish Records" do
    get :index
    expect(response.status).to render_template(:index)
    expect(response.status).to eq(200)
  end

  it "Getting all searched items" do
    get :search
    expect(response.status).to render_template(:search)
    expect(response.status).to eq(200)
  end

  it "Normal filter" do
    get :search
    expect(response.status).to render_template(:search)
    expect(response.status).to eq(200)
  end

   it "Rating filter " do
    get :search
    expect(response.status).to render_template(:search)
    expect(response.status).to eq(200)
  end

  it "Tagging filter " do
    get :search
    expect(response.status).to render_template(:search)
    expect(response.status).to eq(200)
  end

  it "Range slider filter " do
    get :search
    expect(response.status).to render_template(:search)
    expect(response.status).to eq(200)
  end
end