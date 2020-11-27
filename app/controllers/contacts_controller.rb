class ContactsController < ApplicationController
  before_action :set_contact, only: [ :contacted ]
  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save

    redirect_to root_path
  end

  def contacted
    @contact.contacted = true
    if @contact.save
      render json: { success: true }
    else
      render json: { success: false }, status: :unprocessable_entity
    end
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:email, :content)
  end
end
