class EntertainmentsController < ApplicationController


    def show
        @entertainment = Entertainment.find(params[:id])
        @entertainment_review = EntertainmentReview.new
        @user = User.all.sample
    end

end
