class MyRentsController < ApplicationController
  def index
    @bookings = Booking.all
    @dinos = Dinosaur.all
    # On crée un array vide des bookings du current_user
    @user_bookings = []
  end

  def accept
  end

  def deny
  end
end
