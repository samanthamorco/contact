class ContactsController < ApplicationController

  def contacts
    @contacts = ContactInfo.all
  end
end
