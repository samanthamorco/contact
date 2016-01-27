class ContactsController < ApplicationController

  def contacts
    @contacts = ContactInfo.all
  end

  def new
  end

  def create
    # id = params[:id]
    coordinates = Geocoder.coordinates(params[:address])
    latitude = coordinates[0]
    longitude = coordinates [1]
    contact = ContactInfo.create(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], bio: params[:bio], latitude: latitude, longitude: longitude)
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
    middle = params[:middle_name]
    last = params[:last_name]
    email = params[:email]
    phone = params[:phone_number]
    bio = params[:bio]
    address = params[:address]
    coordinates = Geocoder.coordinates(address)
    latitude = coordinates[0]
    longitude = coordinates [1]
    contact.update(first_name: first, middle_name: middle, last_name: last, email: email, phone_number: phone, bio: params[:bio], latitude: latitude, longitude: longitude)
    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    id = params[:id]
    contact = ContactInfo.find_by(id: id)
    contact.destroy
    redirect_to "/contacts/"
  end
end
