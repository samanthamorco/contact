class ContactsController < ApplicationController

  def contacts
    @contacts = ContactInfo.all
  end

  def add_new

  end

  def contact_added
    ContactInfo.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
    @contacts = ContactInfo.all

  end
end
