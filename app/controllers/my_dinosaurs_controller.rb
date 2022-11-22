class MyDinosaursController < ApplicationController
  def new
  end

  def create
  end

  def index
    @owner_dinos = current_user.dinosaurs
  end
end
