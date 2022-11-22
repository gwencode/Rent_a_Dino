class MyBookingsController < ApplicationController
  def index
    @renter = current_user
    @bookings = current_user.bookings
  end
end
