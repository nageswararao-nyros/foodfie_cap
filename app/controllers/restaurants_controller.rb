class RestaurantsController < ApplicationController
  def index
  end
  def show
    @restarent = Restaurant.find(params[:id])
  end
end
