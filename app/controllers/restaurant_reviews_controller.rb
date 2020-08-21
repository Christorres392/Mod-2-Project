class RestaurantReviewsController < ApplicationController
    def create
    @restaurant_review = RestaurantReview.create(restaurant_params)

    redirect_to restaurant_path(@restaurant_review.restaurant_id)
    end

    private

    def restaurant_params
        params.require(:restaurant_review).permit(:user_id, :user_review, :restaurant_id)
    end
end