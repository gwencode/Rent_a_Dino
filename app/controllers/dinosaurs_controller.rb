class DinosaursController < ApplicationController

  def index
  end

  def show
    @dino = Dinosaur.find(params[:id])
    @booking = Booking.new
  end

  def create
  end
end
