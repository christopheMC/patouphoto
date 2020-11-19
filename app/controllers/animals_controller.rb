class AnimalsController < ApplicationController
  before_action :set_animal, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @animals = Animal.all
  end

  def show
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save

    redirect_to animal_path(@animal)
  end

  def edit
  end

  def update
    @animal.update(animal_params)

    redirect_to animal_path(@animal)
  end

  def destroy
    @animal.destroy

    redirect_to animals_path
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name)
  end
end
