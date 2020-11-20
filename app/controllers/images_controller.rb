class ImagesController < ApplicationController
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
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to theme_path(@image.theme)
  end

  private

  def image_params
    params.require(:image).permit(:description, :photo)
  end
end
