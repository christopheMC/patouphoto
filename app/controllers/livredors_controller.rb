class LivredorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create ]

  def index
    @livredors = Livredor.all
  end

  def new
    @livredor = Livredor.new
  end

  def create
    @livredor = Livredor.new(contact_params)
    @livredor.save

    redirect_to livredors_path
  end

  private

  def contact_params
    params.require(:livredor).permit(:name, :content)
  end
end
