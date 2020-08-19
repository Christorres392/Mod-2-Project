class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(destination_params)
  end

  def show
    @destination = Destination.find(params[:id])
  end

  private
  def destination_params
    params.require(:destination).permit(:location, :description)
  end

end
