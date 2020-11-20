class ThemesController < ApplicationController
  before_action :set_theme, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @themes = Theme.all
  end

  def show
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.save

    redirect_to theme_path(@theme)
  end

  def edit
  end

  def update
    @theme.update(theme_params)

    redirect_to theme_path(@theme)
  end

  def destroy
    @theme.destroy

    redirect_to themes_path
  end

  private

  def set_theme
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:name)
  end
end
