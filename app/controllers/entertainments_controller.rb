class EntertainmentsController < ApplicationController

    def index
        @entertainments = Entertainment.all
    end

    def show
        @entertainment = Entertainment.find(params[:id])
        @review = EntertainmentReview.new
    end

end
