class MyRentsController < ApplicationController
  def index
    @bookings = current_user.owner_bookings.order(created_at: :desc)
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accept"
    @booking.save

    redirect_to my_rents_path(current_user)
  end

  def deny
    @booking = Booking.find(params[:id])
    @booking.status = "deny"
    @booking.save

    redirect_to my_rents_path(current_user)
  end
end
