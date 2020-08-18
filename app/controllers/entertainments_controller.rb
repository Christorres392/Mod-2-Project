class EntertainmentsController < ApplicationController


    def show
        @entertainment = Entertainment.find(params[:id])
    end

end
