class EntertainmentsController < ApplicationController

    def index
        @entertainments = Entertainment.all
    end

    def show
        @entertainment = Entertainment.find(params[:id])
        @entertainment_review = EntertainmentReview.new
        @user = User.all.sample
    end

end
