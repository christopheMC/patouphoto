class ImagesController < ApplicationController
    before_action :set_image, only: [ :destroy ]

  def new
    @theme  = Theme.find(params[:theme_id])
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @theme = Theme.find(params[:theme_id])
    @image.theme = @theme
    if @image.save
      redirect_to theme_path(@theme)
    else
      render :new
    end
  end

  def destroy
    @image.destroy
    redirect_to theme_path(@image.theme)
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:description, :photo)
  end
end
