class RidesController < ApplicationController
  def new
  end

  def create
    ride = Ride.new
    ride.user = current_user
    ride.attraction = Attraction.find(params[:attraction_id])
    @message = ride.take_ride
    redirect_to user_path(ride.user)
    flash[:alert] = @message
  end


end
