class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show map]

  def index
    if params[:query].present?
      @dinos = Dinosaur.where("species ILIKE ?", "%#{params[:query]}%")
    else
      @dinos = Dinosaur.all
    end
  end

  def show
    @dino = Dinosaur.find(params[:id])
    @booking = Booking.new
  end

  def create
  end

  def map
    @dinos = Dinosaur.all
    # The `geocoded` scope filters only dinos with coordinates
    @markers = @dinos.geocoded.map do |dino|
      {
        lat: dino.latitude,
        lng: dino.longitude,
        info_window: render_to_string(partial: "info_window", locals: {dino: dino})
      }
    end
  end
end
