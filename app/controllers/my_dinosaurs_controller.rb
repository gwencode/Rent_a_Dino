class MyDinosaursController < ApplicationController
  def new
    @dino = Dinosaur.new
  end

  def create
    @dino = Dinosaur.new(dino_params)
    @dino.owner = current_user

    if @dino.save
      redirect_to dinosaurs_path(@dino)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @owner_dinos = current_user.dinosaurs
  end

  private

  def dino_params
    params.require(:dinosaur).permit(:name, :species, :address, :description, :price_per_day, photos: [])
  end
end
