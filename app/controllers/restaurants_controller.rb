class RestaurantsController < ApplicationController
  def index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_review = RestaurantReview.new
    @user = User.all.sample
  end

end
