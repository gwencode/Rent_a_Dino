class MyDinosaursController < ApplicationController
  def new
    @dino = Dinosaur.new
  end

  def create
    @dino = Dinosaur.new(dino_params)
    @dino.price_per_day = @dino.price_per_day * 100
    @dino.owner = current_user

    if @dino.save
      redirect_to my_dinosaurs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @owner_dinos = current_user.dinosaurs
  end

  def destroy
    @dino = Dinosaur.find(params[:id])
    @dino.destroy

    redirect_to my_dinosaurs_path, status: :see_other
  end

  private

  def dino_params
    params.require(:dinosaur).permit(:name, :species, :address, :description, :price_per_day, photos: [])
  end
end
