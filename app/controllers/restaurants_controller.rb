class RestaurantsController < ApplicationController

  def index
    @restaurants = Restuarant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_review = RestaurantReview.new
    @user = User.all.sample
  end

end
