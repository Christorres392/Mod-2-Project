class EntertainmentReviewsController < ApplicationController
    def create
    @entertainment_review = EntertainmentReview.create(entertainment_params)

    redirect_to entertainment_path(@entertainment_review.entertainment_id)
    end

    private

    def entertainment_params
        params.require(:entertainment_review).permit(:user_id, :user_review, :entertainment_id)
    end
end