class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @dinos = Dinosaur.all
  end

  def show
    @dino = Dinosaur.find(params[:id])
    @booking = Booking.new
  end

  def create
  end
end
