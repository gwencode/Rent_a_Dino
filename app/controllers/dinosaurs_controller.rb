class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @dinos = Dinosaur.all
  end

  def show
  end

  def create
  end
end
