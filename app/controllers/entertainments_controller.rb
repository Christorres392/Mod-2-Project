class EntertainmentsController < ApplicationController


    def show
        @entertainment = Entertainment.find(params[:id])
        @review = EntertainmentReview.new
    end

end
