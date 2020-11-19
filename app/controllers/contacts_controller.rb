class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]


  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save

    redirect_to animals_path
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :content)
  end
end
