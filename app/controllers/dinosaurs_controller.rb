class DinosaursController < ApplicationController
  def index
    @dinos = Dinosaur.all
  end

  def show
  end

  def create
  end
end
