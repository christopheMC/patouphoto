class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create, :edit, :create ]

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

  def edit
  end

  def update
    @contact.update(contact_params)

    redirect_to contact_path(@contact)
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :content, :contacted)
  end
end
