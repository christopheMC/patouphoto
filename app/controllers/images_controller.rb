class ImagesController < ApplicationController
  def new
    @animal  = Animal.find(params[:animal_id])
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @animal = Animal.find(params[:animal_id])
    @image.animal = @animal
    if @image.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to animal_path(@image.animal)
  end

  private

  def image_params
    params.require(:image).permit(:description, :photo)
  end
end
