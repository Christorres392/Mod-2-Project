class EntertainmentsController < ApplicationController


    def index
        @entertainment = Entertainment.all
    end

end
