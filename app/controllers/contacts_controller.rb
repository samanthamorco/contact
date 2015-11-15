class ContactsController < ApplicationController

  def contacts
    @contacts = ContactInfo.all
  end

  def new
  end

  def create
    # id = params[:id]
    contact = ContactInfo.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
    redirect_to "/contacts/#{contact.id}"
  end

  def show
    id = params[:id]
    @contact = ContactInfo.find_by(id: id)
  end

  def edit
    id = params[:id]
    @contact = ContactInfo.find_by(id: id)
  end

  def update
    id = params[:id]
    contact = ContactInfo.find_by(id: id)
    first = params[:first_name]
    last = params[:last_name]
    email = params[:email]
    phone = params[:phone_number]
    contact.update(first_name: first, last_name: last, email: email, phone_number: phone)
    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    id = params[:id]
    contact = ContactInfo.find_by(id: id)
    contact.destroy
    redirect_to "/contacts/"
  end
end
